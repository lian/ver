module VER::Methods
  module Control
    class << self
      def start(text)
        clean_line(text, :insert)
      end

      def insert_at(text, motion, *count)
        Move.send(motion, text, *count)
        text.minor_mode(:control, :insert)
      end

      def insert_indented_newline_above(text)
        Insert.insert_indented_newline_above(text)
      end

      def insert_indented_newline_below(text)
        Insert.insert_indented_newline_below(text)
      end

      def open_file_under_cursor(text)
        Open.open_file_under_cursor(text)
      end

      def source_buffer(text)
        VER.message("Source #{text.filename}")
        load(text.filename.to_s)
      end

      def cursor_vertical_top(text)
        insert = text.count('1.0', 'insert', :displaylines)
        last   = text.count('1.0', 'end', :displaylines)

        fraction = ((100.0 / last) * insert) / 100

        text.yview_moveto(fraction)
      end

      def cursor_vertical_top_sol(text)
        cursor_vertical_top(text)
        Move.start_of_line(text)
      end

      def cursor_vertical_center(text)
        insert = text.count('1.0', 'insert', :displaylines)
        last   = text.count('1.0', 'end', :displaylines)
        shown  = text.count('@0,0', "@0,#{text.winfo_height}", :displaylines)

        fraction = ((100.0 / last) * (insert - (shown / 2))) / 100

        text.yview_moveto(fraction)
      end

      def cursor_vertical_center_sol(text)
        cursor_vertical_center(text)
        Move.start_of_line(text)
      end

      def cursor_vertical_bottom(text)
        insert = text.count('1.0', 'insert', :displaylines) + 1
        last   = text.count('1.0', 'end', :displaylines)
        shown  = text.count('@0,0', "@0,#{text.winfo_height}", :displaylines)

        fraction = ((100.0 / last) * (insert - shown)) / 100

        text.yview_moveto(fraction)
      end

      def cursor_vertical_bottom_sol(text)
        cursor_vertical_bottom(text)
        start_of_line(text)
      end

      def chdir(text)
        text.status_ask 'Change to: ' do |path|
          return unless File.directory?(path.to_s)
          Dir.chdir(path)
        end
      end

      # Toggle case of the character under the cursor up to +count+ characters
      # forward (+count+ is inclusive the first character).
      # This only works for alphabetic ASCII characters, no other encodings.
      def toggle_case(text, count = text.prefix_count)
        from, to = 'insert', "insert + #{count} chars"
        chunk = text.get(from, to)
        chunk.tr!('a-zA-Z', 'A-Za-z')
        text.replace(from, to, chunk)
      end

      REPEAT_BREAK_CMD = [
        :repeat_command,
        :undo,
        :redo,
      ]

      REPEAT_BREAK_MODE = [
        :move,
        :search,
      ]

      def repeat_command(text, count = text.prefix_count)
        actions = []
        text.major_mode.action_history.reverse_each do |event, mode, action|
          if actions.empty?
            next if REPEAT_BREAK_CMD.include?(action.method)
            next if REPEAT_BREAK_MODE.include?(mode.name)
          else
            break if REPEAT_BREAK_CMD.include?(action.method)
            break if REPEAT_BREAK_MODE.include?(mode.name)
          end

          actions << [action, event]
        end

        actions.reverse!

        actions.each do |action, event|
          event.prefix_arg = count
          action.call(event)
        end
      end

      # Assigns env variables used in the given command.
      # - $f: The current buffer's filename
      # - $d: The current buffer's directory
      # - $F: A space-separated list of all buffer filenames
      # - $i: A string acquired from the user with a prompt
      # - $c: The current clipboard text
      # - $s: The currently selected text
      #
      # @param [String] command
      #   The string containing the command executed
      def prepare_exec(command)
        prepare_exec_f if command =~ /\$f/
        prepare_exec_d if command =~ /\$d/
        prepare_exec_F if command =~ /\$F/
        prepare_exec_i if command =~ /\$i/
        prepare_exec_c if command =~ /\$c/
        prepare_exec_s if command =~ /\$s/
      end

      def prepare_exec_f
        p f: (ENV['f'] = filename.to_s)
      end

      def prepare_exec_d
        p d: (ENV['d'] = filename.directory.to_s)
      end

      def prepare_exec_F
        p F: (ENV['F'] = VER.buffers.map{|key, buffer| buffer.filename }.join(' '))
      end

      def prepare_exec_i
        raise NotImplementedError
      end

      def prepare_exec_c
        p c: (ENV['c'] = clipboard_get)
      end

      def prepare_exec_s
        content = []

        each_selected_line do |y, fx, tx|
          content << get("#{y}.#{fx}", "#{y}.#{tx}")
        end

        ENV['s'] = content.join("\n")
      end

      ENV_EXPORTERS = %w[
        current_line current_word directory filepath line_index line_number
        scope selected_text
      ]

      # Set up the env for a script, then execute it.
      # For now, I only setup the env, until we figure out a good way to find
      # bundle commands.
      def exec_bundle
        ENV_EXPORTERS.each do |exporter|
          ENV["VER_#{exporter.upcase}"] = ENV["TM_#{exporter.upcase}"] =
            send("exec_env_#{exporter}").to_s
        end

        yield if block_given?
      end

      # textual content of the current line
      def exec_env_current_line
        get('insert linestart', 'insert lineend')
      end

      # the word in which the caret is located.
      def exec_env_current_word
        get('insert wordstart', 'insert wordend')
      end

      # the folder of the current document (may not be set).
      def exec_env_directory
        filename.dirname.to_s
      end

      # path (including file name) for the current document (may not be set).
      def exec_env_filepath
        filename.to_s
      end

      # the index in the current line which marks the caret's location.
      # This index is zero-based and takes the utf-8 encoding of the line (e.g.
      # read as TM_CURRENT_LINE) into account.
      def exec_env_line_index
        index('insert').x
      end

      # the carets line position (counting from 1).
      def exec_env_line_number
        index('insert').y
      end

      def exec_env_scope
        tag_names('insert').join(', ')
      end

      # full content of the selection (may not be set).
      # Note that environment variables have a size limitation of roughly 64 KB,
      # so if the user selects more than that, this variable will not reflect
      # the actual selection (commands that need to work with the selection
      # should generally set this to be the standard input).
      def exec_env_selected_text
        content = []

        each_selected_line do |y, fx, tx|
          content << get("#{y}.#{fx}", "#{y}.#{tx}")
        end

        content.join("\n")
      end

      def exec_into_new(command = nil)
        if command
          target = options.home_conf_dir/'shell-result.txt'
          prepare_exec(command)
          p command
          system(command)
          target.open('w+'){|io| io.write(`#{command}`) }
          VER.find_or_create_buffer(target)
        else
          status_ask 'Command: ' do |command|
            exec_into_new(command)
          end
        end
      end

      def exec_into_void
        status_ask 'Command: ' do |command|
          system(command)
          message("Exit code: #{$?}")
        end
      end

      def tags_at(index = :insert)
        index = index(index)
        tags = tag_names(index)
        message tags.inspect

        require 'ver/tooltip'

        tooltip = Tk::Tooltip.new(tags.inspect)
        tooltip.show_on(self)

        Tk::After.ms(5000){ tooltip.destroy }
      end

      # Substitute over all lines of the buffer
      def gsub(text, regexp, with)
        total = 0
        Undo.record text do |record|
          text.index('1.0').upto(text.index('end')) do |index|
            lineend = index.lineend
            line = text.get(index, lineend)

            if line.gsub!(regexp, with)
              record.replace(index, lineend, line)
              total += 1
            end
          end
        end

        message "Performed gsub on #{total} lines"
      end

      # Substitute on current line
      def sub(text, regexp, with)
        linestart = text.index('insert linestart')
        lineend = linestart.lineend
        line = text.get(linestart, lineend)

        if line.sub!(regexp, with)
          text.replace(linestart, lineend, line)
        end
      end

      def executor(text)
        VER::Executor.new(text)
      end

      # TODO: make this better?
      def status_ex
        completion = method(:status_ex_filter)

        Buffer::List::Ex.new self, completion do |command, propose|
          begin
            result = propose ? send(command, propose) : eval(command)
            status.message "%s # => %p" % [command, result]
          rescue Exception => ex
            status.error "%s # => %p" % [command, ex]
          end
        end
      end

      def status_ex_filter(input)
        input = input.to_s.split.last
        return [] if !input || input.empty?

        begin
          regexp = Regexp.new(input)
        rescue ArgumentError, RegexpError, SyntaxError
          regexp = Regexp.new(Regexp.escape(input))
        end

        self.methods.grep(regexp).sort_by{|sym| sym =~ regexp }
      end

      def wrap_line(text)
        content = text.get('insert linestart', 'insert lineend')
        textwidth = text.options.textwidth
        lines = wrap_lines_of(content, textwidth).join("\n")
        lines.rstrip!

        text.replace('insert linestart', 'insert lineend', lines)
      end

      def theme_switch
        return unless @syntax

        Buffer::List::Theme.new(self){|name| load_theme(name) }
      end

      def syntax_switch
        return unless @syntax

        Buffer::List::Syntax.new(self){|name| load_syntax(name) }
      end

      def smart_evaluate(text)
        if sel = text.tag_ranges(:sel)
          from, to = sel.first
          return Selection.evaluate(text) if from && to
        end

        line_evaluate(text)
      end

      def line_evaluate(text)
        content = text.get('insert linestart', 'insert lineend')
        stdout_capture_evaluate(content, text.filename) do |res,out|
          text.insert("insert lineend", "\n%s%p" % [out, res] )
        end
      end

      def stdout_capture_evaluate(code, file)
        begin
          old_stdout = $stdout.dup
          rd, wr = IO.pipe
          $stdout.reopen(wr)
          result = eval(code, nil, file.to_s)
          $stdout.reopen old_stdout; wr.close
          stdout = rd.read

          yield(result, stdout)
        rescue Exception => exception
          yield(exception, '')
        ensure
          wr.closed? || $stdout.reopen(old_stdout) && wr.close
          rd.closed? || rd.close
        end
      end

      def eval_buffer
        result = eval(value, TOPLEVEL_BINDING)
      rescue Exception => exception
        VER.error(exception)
      end

      def join_lines(text)
        start_of_next_line = text.search(/\S/, 'insert lineend').first
        text.replace('insert lineend', start_of_next_line, ' ')
      rescue RuntimeError => exception
        return if exception.message =~ /Index "\d+\.\d+" before "insert lineend" in the text/
        Kernel.raise exception
      end

      def indent_line(text, count = text.prefix_count)
        indent = (' ' * text.options[:shiftwidth] * count)
        text.insert('insert linestart', indent)
      end

      def unindent_line(text, count = text.prefix_count)
        indent = ' ' * text.options[:shiftwidth]
        replace_from = 'insert linestart'
        replace_to = "insert linestart + #{indent.size} chars"

        Undo.record text do |record|
          count.times do
            line = text.get('insert linestart', 'insert lineend')

            return unless line.start_with?(indent)

            record.replace(replace_from, replace_to, '')
          end
        end
      end

      def clean_line(text, index, record = text)
        index = text.index(index)
        from, to = index.linestart, index.lineend
        line = text.get(from, to)
        bare = line.rstrip
        record.replace(from, to, bare) if bare.empty?
      end

      def wrap_lines_of(content, wrap = 80)
        Kernel.raise ArgumentError, "+wrap+ must be > 1" unless wrap > 1
        wrap -= 1

        indent = content[/^\s+/] || ''
        indent_size = indent.size
        lines = [indent.dup]

        content.scan(/\S+/) do |chunk|
          last = lines.last
          last_size = last.size
          chunk_size = chunk.size

          if last_size + chunk_size > wrap
            lines << indent + chunk
          elsif last_size == indent_size
            last << chunk
          elsif chunk =~ /\.$/
            last << ' ' << chunk
            lines << indent.dup
          else
            last << ' ' << chunk
          end
        end

        lines
      end
    end
  end
end
