# Encoding: UTF-8

{author: "Thomas Aylott",
 comment: "by Thomas Aylott subtleGradient.com",
 name: "Brilliance Dull",
 settings: 
  [{settings: 
     {background: "#050505FA",
      caret: "#7979B7",
      foreground: "#CDCDCD",
      invisibles: "#CDCDCD1A",
      lineHighlight: "#0000801A",
      selection: "#2E2EE64D"}},
   {name: "Thomas Aylott ㊷",
    scope: "meta.thomas_aylott",
    settings: 
     {background: "#FFFFFF", fontStyle: "bold", foreground: "#000000"}},
   {name: "subtleGradient.com",
    scope: "meta.subtlegradient",
    settings: 
     {background: "#FFFFFF", fontStyle: "underline", foreground: "#555555"}},
   {name: "——————————————————",
    scope: "meta.subtlegradient",
    settings: {background: "#FFFFFF", foreground: "#E6E6E6"}},
   {name: "~ String",
    scope: 
     "string -meta.tag -meta.doctype -string.regexp -string.literal -string.interpolated -string.quoted.literal -string.unquoted, variable.parameter.misc.css, text string source string, string.unquoted string, string.regexp string",
    settings: {background: "#803D0033", foreground: "#D2D1AB"}},
   {name: "~ String Punctuation",
    scope: "punctuation.definition.string -meta.tag",
    settings: {foreground: "#533F2C"}},
   {name: "~ String Punctuation II",
    scope: 
     "string.regexp punctuation.definition.string, string.quoted.literal punctuation.definition.string, string.quoted.double.ruby.mod punctuation.definition.string",
    settings: {foreground: "#FFF80033"}},
   {name: "~ String Literal",
    scope: "string.quoted.literal, string.quoted.double.ruby.mod",
    settings: {background: "#43800033", foreground: "#A6A458"}},
   {name: "~ String Unquoted",
    scope: 
     "string.unquoted -string.unquoted.embedded, string.quoted.double.multiline, meta.scope.heredoc",
    settings: {foreground: "#D2BEAB"}},
   {name: "~ String Interpolated",
    scope: "string.interpolated",
    settings: {background: "#1A1A1A", foreground: "#D2D1AB"}},
   {name: "~ String RegEx",
    scope: "string.regexp",
    settings: {background: "#43800033", foreground: "#A6A458"}},
   {name: "~ String RegEx Group 1",
    scope: "string.regexp.group",
    settings: {background: "#43800033"}},
   {name: "~ String RegEx Group 2",
    scope: "string.regexp.group string.regexp.group ",
    settings: {background: "#43800033", foreground: "#FFFFFF66"}},
   {name: "~ String RegEx Group 3",
    scope: "string.regexp.group string.regexp.group string.regexp.group ",
    settings: {background: "#43800033", foreground: "#FFFFFF66"}},
   {name: "~ String RegEx Group 4",
    scope: 
     "string.regexp.group string.regexp.group string.regexp.group string.regexp.group ",
    settings: {background: "#43800033", foreground: "#FFFFFF66"}},
   {name: "~ String RegEx Character-Class",
    scope: "string.regexp.character-class",
    settings: {background: "#43800033", foreground: "#80A659"}},
   {name: "~ String RegEx Arbitrary-Repitition",
    scope: "string.regexp.arbitrary-repitition",
    settings: {background: "#43800033", foreground: "#56A5A4"}},
   {name: "source.regexp keyword",
    scope: "source.regexp keyword.operator",
    settings: {foreground: "#A75980"}},
   {name: "~ String RegEx Comment",
    scope: "string.regexp comment",
    settings: {fontStyle: "italic", foreground: "#FFFFFF"}},
   {name: "~ Meta Group Assertion Regexp ",
    scope: "meta.group.assertion.regexp ",
    settings: {background: "#0086FF33"}},
   {name: "~ Meta Assertion",
    scope: "meta.assertion, meta.group.assertion keyword.control.group.regexp",
    settings: {foreground: "#5780A6"}},
   {name: "~ Number",
    scope: "constant.numeric",
    settings: {foreground: "#95A658"}},
   {name: "~ Character constant",
    scope: "constant.character",
    settings: {foreground: "#80A659"}},
   {name: "~ Built-in constant",
    scope: 
     "constant.language, keyword.other.unit, constant.other.java, constant.other.unit",
    settings: {foreground: "#59A559"}},
   {name: "~ Built-in constant+",
    scope: "constant.language.pseudo-variable",
    settings: {background: "#04800033", foreground: "#59A559"}},
   {name: "~ User-defined constant",
    scope: "constant.other, constant.block",
    settings: {foreground: "#57A57D"}},
   {name: "~ Library constant",
    scope: "support.constant, constant.name",
    settings: {foreground: "#56A5A4"}},
   {name: "—————————————————", settings: {}},
   {name: "√ pre-defined variable",
    scope: "variable.language, variable.other.readwrite.global.pre-defined",
    settings: {foreground: "#5E6B6B"}},
   {name: "√ Constant Variable",
    scope: "variable.other.constant",
    settings: {foreground: "#56A5A4"}},
   {name: "√ Library variable",
    scope: "support.variable",
    settings: {background: "#00807C33", foreground: "#56A5A4"}},
   {name: "√ global Variable",
    scope: "variable.other.readwrite.global",
    settings: {background: "#00438033", foreground: "#2B5252"}},
   {name: "√ Variable",
    scope: "variable.other, variable.js",
    settings: {foreground: "#5780A6"}},
   {name: "√ class Variable",
    scope: "variable.other.readwrite.class",
    settings: {background: "#0007FF33", foreground: "#5780A6"}},
   {name: "√ instance Variable",
    scope: "variable.other.readwrite.instance",
    settings: {foreground: "#555F69"}},
   {name: "√ Normal Variables",
    scope: "variable.other.php, variable.other.normal",
    settings: {foreground: "#555F69"}},
   {name: "√ Variable Punctuation",
    scope: 
     "punctuation.definition -punctuation.definition.comment, punctuation.separator.variable",
    settings: {foreground: "#00000080"}},
   {name: "—————————————————", settings: {}},
   {name: "¢ Storage",
    scope: "storage -storage.modifier",
    settings: {foreground: "#A77D58"}},
   {name: "¢ Entity Name Preprocessor",
    scope: "other.preprocessor, entity.name.preprocessor",
    settings: {background: "#803D0033"}},
   {name: "~ variable.language.this.js.prototype",
    scope: "variable.language.this.js",
    settings: {foreground: "#666666"}},
   {name: "¢ Storage Modifier",
    scope: "storage.modifier",
    settings: {foreground: "#533F2C"}},
   {name: "¢ Class name",
    scope: 
     "entity.name.class, entity.name.type.class, entity.name.type.module",
    settings: {foreground: "#A7595A"}},
   {name: "¢ Class",
    scope: 
     "meta.class -meta.class.instance, declaration.class, meta.definition.class, declaration.module",
    settings: {background: "#29161780", foreground: "#532D2D"}},
   {name: "¢ Library class/type",
    scope: "support.type, support.class",
    settings: {background: "#80000433", foreground: "#A7595A"}},
   {name: "¢ Instance",
    scope: "entity.name.instance",
    settings: {foreground: "#A7595A"}},
   {name: "¢ Instance.constructor",
    scope: "meta.class.instance.constructor",
    settings: {background: "#80004333"}},
   {name: "¢ Inherited class",
    scope: "entity.other.inherited-class, entity.name.module",
    settings: {background: "#80000433", foreground: "#A75980"}},
   {name: "¢ Class Method",
    scope: "object.property.function, meta.definition.method",
    settings: {foreground: "#A75980"}},
   {name: "¢ Function",
    scope: 
     "meta.function -(meta.tell-block), meta.property.function, declaration.function",
    settings: {background: "#80004333", foreground: "#532D40"}},
   {name: "¢ Function name",
    scope: "entity.name.function, entity.name.preprocessor",
    settings: {foreground: "#A75980"}},
   {name: "—————————————————", settings: {}},
   {name: "™ Keyword", scope: "keyword", settings: {foreground: "#A459A5"}},
   {name: "™ Keyword.control",
    scope: "keyword.control",
    settings: {background: "#3C008033", foreground: "#A459A5"}},
   {name: "™ Special Function",
    scope: 
     "keyword.other.special-method, meta.function-call entity.name.function -(meta.function-call meta.function), support.function - variable",
    settings: {foreground: "#8D809D"}},
   {name: "™ Library function",
    scope: "support.function - variable",
    settings: {foreground: "#634683"}},
   {name: "™ Keyword.operator",
    scope: 
     "keyword.operator, declaration.function.operator, meta.preprocessor.c.include",
    settings: {fontStyle: "bold", foreground: "#7979B7"}},
   {name: "™ keyword.operator.comparison",
    scope: "keyword.operator.comparison",
    settings: {fontStyle: "", foreground: "#9899C8"}},
   {name: "™ Function argument",
    scope: 
     "variable.parameter -variable.parameter.misc.css, meta.definition.method  meta.definition.param-list, meta.function.method.with-arguments variable.parameter.function",
    settings: {background: "#3C008033", foreground: "#ABACD2"}},
   {name: "—————————————————", settings: {}},
   {name: "✘ HTML", settings: {}},
   {name: "✘ Tag Doctype",
    scope: 
     "meta.doctype, meta.tag.sgml-declaration.doctype, meta.tag.sgml.doctype",
    settings: {background: "#333333", foreground: "#CDCDCD"}},
   {name: "✘ Tag", scope: "meta.tag", settings: {foreground: "#333333"}},
   {name: "✘ Tag Structure",
    scope: "meta.tag.structure, meta.tag.segment",
    settings: {background: "#333333BF", foreground: "#666666"}},
   {name: "✘ Tag Block",
    scope: "meta.tag.block, meta.tag.xml, meta.tag.key",
    settings: {background: "#4C4C4C33", foreground: "#4C4C4C"}},
   {name: "✘ Tag Inline",
    scope: "meta.tag.inline",
    settings: {background: "#803D0033", foreground: "#A77D58"}},
   {name: "meta.tag.inline source",
    scope: "meta.tag.inline source",
    settings: {background: "#803D0033"}},
   {name: "✘ Tag Other",
    scope: 
     "meta.tag.other, entity.name.tag.style, source entity.other.attribute-name -text.html.basic.embedded , entity.name.tag.script, meta.tag.block.script",
    settings: {background: "#80000433", foreground: "#A7595A"}},
   {name: "✘ Tag Form",
    scope: "meta.tag.form, meta.tag.block.form",
    settings: {background: "#00438033", foreground: "#5780A6"}},
   {name: "✘ Tag Meta",
    scope: "meta.tag.meta",
    settings: {background: "#3C008033", foreground: "#A459A5"}},
   {name: "✘ Tag Block Head",
    scope: "meta.section.html.head",
    settings: {background: "#121212"}},
   {name: "✘ Tag Block Form",
    scope: "meta.section.html.form",
    settings: {background: "#0043801A"}},
   {name: "✘ XML Tag",
    scope: "meta.tag.xml",
    settings: {foreground: "#666666"}},
   {name: "✘ Tag name",
    scope: "entity.name.tag",
    settings: {foreground: "#FFFFFF4D"}},
   {name: "✘ Tag attribute",
    scope: 
     "entity.other.attribute-name, meta.tag punctuation.definition.string",
    settings: {foreground: "#FFFFFF33"}},
   {name: "✘ Tag value",
    scope: 
     "meta.tag string -source -punctuation, text source text meta.tag string -punctuation",
    settings: {foreground: "#FFFFFF66"}},
   {name: "—————————————————", settings: {}},
   {name: "M markdown", settings: {}},
   {name: "M markup",
    scope: "markup markup -(markup meta.paragraph.list)",
    settings: {background: "#33333333", foreground: "#A6A458"}},
   {name: "M HR",
    scope: "markup.hr",
    settings: {background: "#FFFFFF", foreground: "#000000"}},
   {name: "M heading",
    scope: "markup.heading",
    settings: {background: "#33333380", foreground: "#666666"}},
   {name: "M bold", scope: "markup.bold", settings: {fontStyle: "bold"}},
   {name: "M italic", scope: "markup.italic", settings: {fontStyle: "italic"}},
   {name: "M strike", settings: {}},
   {name: "M add", settings: {}},
   {name: "M del", settings: {}},
   {name: "M underline",
    scope: "markup.underline",
    settings: {fontStyle: "underline"}},
   {name: "M reference",
    scope: "meta.reference, markup.underline.link",
    settings: {fontStyle: "", foreground: "#5780A6"}},
   {name: "M reference name",
    scope: "entity.name.reference",
    settings: {background: "#00438033", foreground: "#56A5A4"}},
   {name: "M underline link",
    scope: 
     "meta.reference.list markup.underline.link, text.html.textile markup.underline.link",
    settings: {fontStyle: "underline", foreground: "#56A5A4"}},
   {name: "M raw block",
    scope: "markup.raw.block",
    settings: {background: "#000000", foreground: "#999999"}},
   {name: "M quote block",
    scope: "markup.quote",
    settings: {background: "#FFFFFF1A"}},
   {name: "—————————————————", settings: {}},
   {name: "§ CSS", scope: "source.css", settings: {}},
   {name: "§ Selector",
    scope: "meta.selector",
    settings: {background: "#00000080", foreground: "#666666"}},
   {name: "§ Attribute-Match",
    scope: "meta.attribute-match.css",
    settings: {background: "#00048033", foreground: "#575AA6"}},
   {name: "§ Pseudo-Class",
    scope: 
     "entity.other.attribute-name.pseudo-class, entity.other.attribute-name.tag.pseudo-class",
    settings: {foreground: "#7C58A5"}},
   {name: "§ Class",
    scope: "meta.selector entity.other.attribute-name.class",
    settings: {foreground: "#A459A5"}},
   {name: "§ ID",
    scope: "meta.selector entity.other.attribute-name.id",
    settings: {foreground: "#A75980"}},
   {name: "§ Tag",
    scope: "meta.selector entity.name.tag",
    settings: {fontStyle: "", foreground: "#A7595A"}},
   {name: "§ Tag Wildcard",
    scope: "entity.name.tag.wildcard, entity.other.attribute-name.universal",
    settings: {fontStyle: "bold", foreground: "#A77D58"}},
   {name: "§ meta.scope.property-list",
    scope: "meta.scope.property-list",
    settings: {fontStyle: "bold", foreground: "#333333"}},
   {name: "§ meta.property-name",
    scope: "meta.property-name",
    settings: {fontStyle: "", foreground: "#999999"}},
   {name: "§ support.type.property-name",
    scope: "support.type.property-name",
    settings: {background: "#000000", fontStyle: "", foreground: "#FFFFFF"}},
   {name: "§ meta.property-value",
    scope: "meta.property-value",
    settings: {background: "#0D0D0D", fontStyle: "", foreground: "#999999"}},
   {name: "—————————————————", settings: {}},
   {name: "LaTeX", scope: "text.latex", settings: {}},
   {name: "L Markup Raw",
    scope: "text.latex markup.raw",
    settings: {background: "#000000"}},
   {name: "L support.function",
    scope: 
     "text.latex support.function -support.function.textit -support.function.emph",
    settings: {foreground: "#BDABD1"}},
   {name: "L support.function.section",
    scope: "text.latex support.function.section",
    settings: {foreground: "#FFFFFFBF"}},
   {name: "L entity.name.section",
    scope: 
     "text.latex entity.name.section -meta.group -keyword.operator.braces",
    settings: {background: "#FFFFFF", fontStyle: "", foreground: "#000000"}},
   {name: "L constant.language.general",
    scope: "text.latex constant.language.general",
    settings: {}},
   {name: "L keyword.operator.delimiter",
    scope: "text.latex keyword.operator.delimiter",
    settings: {background: "#00000080"}},
   {name: "L keyword.operator.brackets",
    scope: "text.latex keyword.operator.brackets",
    settings: {foreground: "#999999"}},
   {name: "L keyword.operator.braces",
    scope: "text.latex keyword.operator.braces",
    settings: {fontStyle: "", foreground: "#666666"}},
   {name: "L meta.footnote",
    scope: "meta.footnote",
    settings: {background: "#00048033", foreground: "#0008FF4D"}},
   {name: "L meta.label.reference",
    scope: "text.latex meta.label.reference",
    settings: {background: "#FFFFFF0D", fontStyle: ""}},
   {name: "L keyword.control.ref",
    scope: "text.latex keyword.control.ref",
    settings: {background: "#180D0C", foreground: "#A7595A"}},
   {name: "L variable.parameter.label.reference",
    scope: "text.latex variable.parameter.label.reference",
    settings: {background: "#291616", foreground: "#D2BEAB"}},
   {name: "L keyword.control.cite",
    scope: "text.latex keyword.control.cite",
    settings: {background: "#180D12", foreground: "#A75980"}},
   {name: "L variable.parameter.cite",
    scope: "variable.parameter.cite",
    settings: {background: "#29161F", foreground: "#E8D5DE"}},
   {name: "L variable.parameter.label",
    scope: "text.latex variable.parameter.label",
    settings: {foreground: "#FFFFFF80"}},
   {name: "L meta.group.braces",
    scope: "text.latex meta.group.braces",
    settings: {foreground: "#33333333"}},
   {name: "L meta.environment.list",
    scope: "text.latex meta.environment.list",
    settings: 
     {background: "#00000080", fontStyle: "", foreground: "#33333333"}},
   {name: "L meta.environment.list 2",
    scope: "text.latex meta.environment.list meta.environment.list ",
    settings: {background: "#00000080", foreground: "#33333333"}},
   {name: "L meta.environment.list 3",
    scope: 
     "text.latex meta.environment.list meta.environment.list meta.environment.list ",
    settings: {background: "#000000", foreground: "#33333333"}},
   {name: "L meta.environment.list 4",
    scope: 
     "text.latex meta.environment.list meta.environment.list meta.environment.list meta.environment.list ",
    settings: {foreground: "#33333333"}},
   {name: "L meta.environment.list 5",
    scope: 
     "text.latex meta.environment.list meta.environment.list meta.environment.list meta.environment.list meta.environment.list ",
    settings: {foreground: "#33333333"}},
   {name: "L meta.environment.list 6",
    scope: 
     "text.latex meta.environment.list meta.environment.list meta.environment.list meta.environment.list meta.environment.list meta.environment.list ",
    settings: {foreground: "#33333333"}},
   {name: "L meta.end-document",
    scope: 
     "text.latex meta.end-document, text.latex meta.begin-document, meta.end-document.latex support.function, meta.end-document.latex variable.parameter, meta.begin-document.latex support.function, meta.begin-document.latex variable.parameter",
    settings: {background: "#CDCDCD", foreground: "#000000"}},
   {name: "—————————————————", settings: {}},
   {name: "meta.brace.erb.return-value",
    scope: "meta.brace.erb.return-value",
    settings: {background: "#45815D33", foreground: "#596B61"}},
   {name: "source.ruby.rails.embedded.return-value.one-line",
    scope: "source.ruby.rails.embedded.return-value.one-line",
    settings: {background: "#66666633"}},
   {name: "meta.brace.erb",
    scope: 
     "punctuation.section.embedded -(source string source punctuation.section.embedded), meta.brace.erb.html",
    settings: {background: "#00FFF81A", foreground: "#56A5A4"}},
   {name: "source.ruby.rails.embedded.one-line",
    scope: "source.ruby.rails.embedded.one-line",
    settings: {background: "#00FFF81A"}},
   {name: "String Embedded Source",
    scope: "source string source punctuation.section.embedded",
    settings: {foreground: "#555F69"}},
   {name: "◊ Source",
    scope: "source",
    settings: {background: "#000000", fontStyle: ""}},
   {name: "◊ meta.brace.erb",
    scope: "meta.brace.erb",
    settings: {background: "#000000"}},
   {name: "◊ Source String Source",
    scope: "source string source",
    settings: {background: "#33333380", foreground: "#FFFFFF"}},
   {name: "◊ Source String Interpolated Source",
    scope: "source string.interpolated source",
    settings: {background: "#00000099", foreground: "#999999"}},
   {name: "◊ Source Embeded Source",
    scope: "source.java.embedded",
    settings: {background: "#3333331A"}},
   {name: "◊ Text",
    scope: "text -text.xml.strict",
    settings: {foreground: "#FFFFFF"}},
   {name: "◊ Text Source",
    scope: "text source, meta.scope.django.template",
    settings: {background: "#000000", foreground: "#CCCCCC"}},
   {name: "◊ Text Source Text String", settings: {}},
   {name: "◊ Text String Source",
    scope: "text string source",
    settings: {foreground: "#999999"}},
   {name: "◊ Text Source String Source", settings: {}},
   {name: "◊ Text String Source String Source",
    scope: "text string source string source",
    settings: {}},
   {name: "—————————————————", settings: {}},
   {name: "Syntax", scope: "meta.syntax", settings: {foreground: "#333333"}},
   {name: "Invalid",
    scope: "invalid",
    settings: 
     {background: "#A7595A", fontStyle: "bold", foreground: "#211211"}},
   {name: "Comment",
    scope: "0comment",
    settings: 
     {background: "#0000FF1A", fontStyle: "italic", foreground: "#8F8FC3"}},
   {name: "Comment Punctuation",
    scope: "comment punctuation",
    settings: {fontStyle: "bold", foreground: "#0000FF1A"}},
   {name: "comment", scope: "comment", settings: {foreground: "#333333"}},
   {name: "Comment Punctuation",
    scope: "comment punctuation",
    settings: 
     {background: "#8080800D",
      fontStyle: "bold italic",
      foreground: "#262626"}},
   {name: "✘ HTML Comment",
    scope: "text comment.block -source",
    settings: {fontStyle: "italic"}},
   {name: "—————————————————", settings: {}},
   {name: "D Diff Add",
    scope: "markup.inserted",
    settings: {background: "#15281F", foreground: "#81BB9E"}},
   {name: "D Diff Delete",
    scope: "markup.deleted",
    settings: {background: "#400021", foreground: "#BC839F"}},
   {name: "D Diff Changed",
    scope: "markup.changed",
    settings: {background: "#533F2C", foreground: "#C3C38F"}},
   {name: "text.subversion-commit meta.scope.changed-files",
    scope: 
     "text.subversion-commit meta.scope.changed-files, text.subversion-commit meta.scope.changed-files.svn meta.diff.separator",
    settings: {background: "#000000", foreground: "#FFFFFF"}},
   {name: "text.subversion-commit",
    scope: "text.subversion-commit",
    settings: {background: "#FFFFFF", foreground: "#000000"}},
   {name: "—————————————————", settings: {}},
   {name: "meta.delimiter",
    scope: 
     "punctuation.terminator, meta.delimiter, punctuation.separator.method",
    settings: 
     {background: "#FFFFFF03", fontStyle: "bold", foreground: "#FFFFFF"}},
   {name: "meta.delimiter.statement.js",
    scope: "punctuation.terminator.statement, meta.delimiter.statement.js",
    settings: {background: "#000000BF"}},
   {name: "meta.delimiter.object.js",
    scope: "meta.delimiter.object.js",
    settings: {background: "#00000040"}},
   {name: "Bold String Quotes",
    scope: "string.quoted.single.brace, string.quoted.double.brace",
    settings: {fontStyle: "bold", foreground: "#533F2C"}},
   {name: "—————————————————", settings: {}},
   {name: "meta.headers.blog",
    scope: "text.blog -(text.blog text)",
    settings: {background: "#FFFFFF"}},
   {name: "meta.headers.blog",
    scope: "meta.headers.blog",
    settings: {background: "#FFFFFF", foreground: "#666666"}},
   {name: "meta.headers.blog keyword.other.blog",
    scope: "meta.headers.blog keyword.other.blog",
    settings: {background: "#00FFF81A", fontStyle: "", foreground: "#192B2A"}},
   {name: "meta.headers.blog string.unquoted.blog",
    scope: "meta.headers.blog string.unquoted.blog",
    settings: {background: "#FFFF551A", foreground: "#533F2C"}},
   {name: "—————————————————", settings: {}},
   {name: "meta.brace.pipe",
    scope: "meta.brace.pipe",
    settings: {background: "#33333333", fontStyle: "", foreground: "#4C4C4C"}},
   {name: "Misc Punctuation",
    scope: 
     "meta.brace.erb, source.ruby.embedded.source.brace, punctuation.section.dictionary, punctuation.terminator.dictionary, punctuation.separator.object",
    settings: {fontStyle: "bold", foreground: "#4C4C4C"}},
   {name: "Curly Punctuation",
    scope: 
     "meta.group.braces.curly punctuation.section.scope, meta.brace.curly",
    settings: {fontStyle: "bold", foreground: "#FFFFFF"}},
   {name: "Object Punctuation",
    scope: 
     "punctuation.separator.objects, meta.group.braces.curly meta.delimiter.object.comma, punctuation.separator.key-value -meta.tag",
    settings: {fontStyle: "bold", foreground: "#345743"}},
   {name: "Array Punctuation",
    scope: 
     "meta.group.braces.square punctuation.section.scope, meta.group.braces.square meta.delimiter.object.comma, meta.brace.square, punctuation.separator.array, punctuation.section.array",
    settings: 
     {background: "#803D001A", fontStyle: "bold", foreground: "#695F55"}},
   {name: "meta.brace.curly meta.group",
    scope: "meta.brace.curly meta.group",
    settings: {background: "#00000080", fontStyle: "", foreground: "#CDCDCD"}},
   {name: "Function Punctuation",
    scope: 
     "meta.group.braces.round punctuation.section.scope, meta.group.braces.round meta.delimiter.object.comma, meta.brace.round",
    settings: {fontStyle: "bold", foreground: "#532D40"}},
   {name: "meta.brace.curly.function",
    scope: 
     "punctuation.section.function, meta.brace.curly.function, meta.function-call punctuation.section.scope.ruby",
    settings: {background: "#3C008033", fontStyle: "", foreground: "#ABACD2"}},
   {name: "º meta.source.embedded",
    scope: "meta.source.embedded, entity.other.django.tagbraces",
    settings: {background: "#00000080", foreground: "#666666"}},
   {name: "º meta.group.braces.round JS",
    scope: "source.js meta.group.braces.round, meta.scope.heredoc",
    settings: {}},
   {name: "º meta.group.braces 1",
    scope: 
     "meta.odd-tab.group1, meta.group.braces, meta.block.slate, text.xml.strict meta.tag, meta.tell-block meta.tell-block",
    settings: {background: "#0A0A0A"}},
   {name: "º meta.group.braces 2",
    scope: 
     "meta.even-tab.group2, meta.group.braces meta.group.braces, meta.block.slate meta.block.slate, text.xml.strict meta.tag meta.tag, meta.group.braces meta.group.braces, meta.tell-block meta.tell-block",
    settings: {background: "#0E0E0E"}},
   {name: "º meta.group.braces 3",
    scope: 
     "meta.odd-tab.group3, meta.group.braces meta.group.braces meta.group.braces , meta.block.slate meta.block.slate meta.block.slate , text.xml.strict meta.tag meta.tag meta.tag, meta.group.braces meta.group.braces meta.group.braces, meta.tell-block meta.tell-block meta.tell-block",
    settings: {background: "#111111"}},
   {name: "º meta.group.braces 4",
    scope: 
     "meta.even-tab.group4, meta.group.braces meta.group.braces meta.group.braces meta.group.braces , meta.block.slate meta.block.slate meta.block.slate meta.block.slate , text.xml.strict meta.tag meta.tag meta.tag meta.tag, meta.group.braces meta.group.braces meta.group.braces meta.group.braces, meta.tell-block meta.tell-block meta.tell-block meta.tell-block",
    settings: {background: "#151515"}},
   {name: "º meta.group.braces 5",
    scope: 
     "meta.odd-tab.group5, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces , meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate , text.xml.strict meta.tag meta.tag meta.tag meta.tag meta.tag, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces, meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block",
    settings: {background: "#191919"}},
   {name: "º meta.group.braces 6",
    scope: 
     "meta.even-tab.group6, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces , meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate , text.xml.strict meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces, meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block",
    settings: {background: "#1C1C1C"}},
   {name: "º meta.group.braces 7",
    scope: 
     "meta.odd-tab.group7, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces , meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate , text.xml.strict meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces, meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block",
    settings: {background: "#1F1F1F"}},
   {name: "º meta.group.braces 8",
    scope: 
     "meta.even-tab.group8, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces , meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate , text.xml.strict meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces, meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block",
    settings: {background: "#212121"}},
   {name: "º meta.group.braces 9",
    scope: 
     "meta.odd-tab.group11, meta.odd-tab.group10, meta.odd-tab.group9, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces , meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate meta.block.slate , text.xml.strict meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag meta.tag, meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces meta.group.braces, meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block meta.tell-block",
    settings: {background: "#242424"}},
   {name: "º meta.block.slate ",
    scope: "meta.block.slate",
    settings: {foreground: "#666666"}},
   {name: "º meta.block.content.slate ",
    scope: "meta.block.content.slate ",
    settings: {foreground: "#CDCDCD"}},
   {name: "—————————————————", settings: {}}],
 uuid: "4535004C-927A-401A-A6D5-1C9AC89E24C6"}