module VER
  class Text
    Index = Struct.new(:widget, :idx, :y, :x)
    class Index
      include Comparable

      def initialize(widget, idx)
        self.widget, self.idx = widget, idx.to_str
      end

      def to_index
        self
      end

      def <=>(other)
        self_idx, other_idx = idx, other.to_index.idx
        return  1 if widget.compare(self_idx, '>',  other_idx)
        return -1 if widget.compare(self_idx, '<',  other_idx)
        return  0 if widget.compare(self_idx, '==', other_idx)
      end

      def ==(other)
        self_idx, other_idx = idx, other.to_index.idx
        widget.compare(self_idx, '==', other_idx)
      end

      def delta(other)
        y_diff = other.y - y

        if y_diff == 0
          (other.x - x).abs
        else
          y_diff.abs
        end
      end

      def y
        self[:y] ||= idx.split('.', 2)[0].to_i
      end

      def x
        self[:x] ||= idx.split('.', 2)[1].to_i
      end

      def linestart
        widget.index "#{idx} linestart"
      end

      def lineend
        widget.index "#{idx} lineend"
      end

      def wordstart
        widget.index "#{idx} wordstart"
      end

      def wordend
        widget.index "#{idx} wordend"
      end

      def next
        widget.index "#{y + 1}.#{x}"
      end

      def prev
        widget.index "#{y - 1}.#{x}"
      end

      def +(chars)
        widget.index "#{idx} + #{chars} chars"
      end

      def -(other)
        if other.is_a?(self.class)
          widget.count(other, self, :displaychars)
        else
          widget.index "#{idx} - #{other.to_int} chars"
        end
      end

      def split
        return y, x
      end

      def inspect
        to_s # "#<Text::Index #{self}>"
      end

      def to_str
        idx
      end

      def to_s
        "#{y}.#{x}"
      end

      def to_i
        y
      end

      def to_tcl
        Tk::TclString.new(to_s)
      end

      def upto(other)
        if block_given?
          y.upto(other.y) do |line|
            yield self.class.new(widget, "#{line}.0")
          end
        else
          Enumerator.new(self, :upto, other)
        end
      end

      def is_a?(obj)
        obj == String || super
      end
    end
  end
end
