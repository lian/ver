# Encoding: UTF-8

{fileTypes: ["rb", "rxml", "builder"],
 foldingStartMarker: 
  /(?x)^
	    (\s*+
	        (module|class|def
	        |unless|if
	        |case
	        |begin
	        |for|while|until
	        |(  "(\\.|[^"])*+"          # eat a double quoted string
	         | '(\\.|[^'])*+'        # eat a single quoted string
	         |   [^#"']                # eat all but comments and strings
	         )*
	         (                 \s   (do|begin|case)
	         | [-+=&|*\/~%^<>~] \s*+ (if|unless)
	         )
	        )\b
	        (?! [^;]*+ ; .*? \bend\b )
	    |(  "(\\.|[^"])*+"              # eat a double quoted string
	     | '(\\.|[^'])*+'            # eat a single quoted string
	     |   [^#"']                    # eat all but comments and strings
	     )*
	     ( \{ (?!  [^}]*+ \} )
	     | \[ (?! [^\]]*+ \] )
	     )
	    ).*$
	|   [#] .*? \(fold\) \s*+ $         # Sune’s special marker
	/,
 foldingStopMarker: 
  /(?x)
	(   (^|;) \s*+ end   \s*+ ([#].*)? $
	|   ^     \s*+ [}\]] \s*+ ([#].*)? $
	|   [#] .*? \(end\) \s*+ $    # Sune’s special marker
	)/,
 keyEquivalent: /^~R/,
 name: "Ruby on Rails",
 patterns: 
  [{begin: 
     /(^\s*)(?=class\s+(([.a-zA-Z0-9_:]+ControllerTest(\s*<\s*[.a-zA-Z0-9_:]+)?)))/,
    comment: 
     "Uses lookahead to match classes with the ControllerTest suffix; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.functional_test",
    patterns: [{include: "source.ruby"}, {include: "$self"}]},
   {begin: 
     /(^\s*)(?=class\s+(([.a-zA-Z0-9_:]+Controller\b(\s*<\s*[.a-zA-Z0-9_:]+)?)|(<<\s*[.a-zA-Z0-9_:]+)))(?!.+\bend\b)/,
    comment: 
     "Uses lookahead to match classes with the Controller suffix; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.controller",
    patterns: [{include: "source.ruby"}, {include: "$self"}]},
   {begin: /(^\s*)(?=module\s+((([A-Z]\w*::)*)[A-Z]\w*)Helper)/,
    comment: 
     "Uses lookahead to match modules with the Helper suffix; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.helper",
    patterns: [{include: "source.ruby"}, {include: "$self"}]},
   {begin: /(^\s*)(?=class\s+(([.a-zA-Z0-9_:]+(\s*<\s*ActionMailer::Base))))/,
    comment: 
     "Uses lookahead to match classes that inherit from ActionMailer::Base; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.mailer",
    patterns: [{include: "source.ruby"}, {include: "$self"}]},
   {begin: /(^\s*)(?=class\s+.+ActiveRecord::Base)/,
    comment: 
     "Uses lookahead to match classes that (may) inherit from ActiveRecord::Base; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.model",
    patterns: [{include: "source.ruby"}, {include: "$self"}]},
   {begin: /(^\s*)(?=class\s+.+ActiveRecord::Migration)/,
    comment: 
     "Uses lookahead to match classes that (may) inherit from ActiveRecord::Migration; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.migration",
    patterns: 
     [{begin: /(^\s*)(?=change_table)\b/,
       comment: 
        "Uses lookahead to match methods change_table; includes 'source.ruby' to avoid infinite recursion",
       contentName: "meta.rails.migration.change_table",
       end: "^\\1(?=end)\\b",
       patterns: [{include: "source.ruby"}, {include: "$self"}]},
      {begin: /(^\s*)(?=create_table)\b/,
       comment: 
        "Uses lookahead to match methods create_table; includes 'source.ruby' to avoid infinite recursion",
       contentName: "meta.rails.migration.create_table",
       end: "^\\1(?=end)\\b",
       patterns: [{include: "source.ruby"}, {include: "$self"}]},
      {include: "source.ruby"},
      {include: "$self"}]},
   {begin: 
     /(^\s*)(?=class\s+(?![.a-zA-Z0-9_:]+ControllerTest)(([.a-zA-Z0-9_:]+Test(\s*<\s*[.a-zA-Z0-9_:]+)?)|(<<\s*[.a-zA-Z0-9_:]+)))/,
    comment: 
     "Uses lookahead to match classes with the Test suffix; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.unit_test",
    patterns: [{include: "source.ruby"}, {include: "$self"}]},
   {begin: /(^\s*)ActionController::Routing::Routes/,
    comment: 
     "Uses ActionController::Routing::Routes to determine it is a routes file; includes 'source.ruby' to avoid infinite recursion",
    end: "^\\1(?=end)\\b",
    name: "meta.rails.routes",
    patterns: [{include: "source.ruby"}, {include: "$self"}]},
   {match: 
     /\b(before_filter|skip_before_filter|skip_after_filter|after_filter|around_filter|filter|filter_parameter_logging|layout|require_dependency|render|render_action|render_text|render_file|render_template|render_nothing|render_component|render_without_layout|rescue_from|url_for|redirect_to|redirect_to_path|redirect_to_url|respond_to|helper|helper_method|model|service|observer|serialize|scaffold|verify|hide_action)\b/,
    name: "support.function.actionpack.rails"},
   {match: 
     /\b(named_scope|after_create|after_destroy|after_save|after_update|after_validation|after_validation_on_create|after_validation_on_update|before_create|before_destroy|before_save|before_update|before_validation|before_validation_on_create|before_validation_on_update|composed_of|belongs_to|has_one|has_many|has_and_belongs_to_many|validate|validate_on_create|validates_numericality_of|validate_on_update|validates_acceptance_of|validates_associated|validates_confirmation_of|validates_each|validates_format_of|validates_inclusion_of|validates_exclusion_of|validates_length_of|validates_presence_of|validates_size_of|validates_uniqueness_of|attr_protected|attr_accessible|attr_readonly)\b/,
    name: "support.function.activerecord.rails"},
   {match: 
     /\b(alias_method_chain|alias_attribute|delegate|cattr_accessor|mattr_accessor|returning)\b/,
    name: "support.function.activesupport.rails"},
   {include: "source.ruby"}],
 scopeName: "source.ruby.rails",
 uuid: "54D6E91E-8F31-11D9-90C5-0011242E4184"}
