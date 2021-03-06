# Encoding: UTF-8

{fileTypes: ["pas", "p"],
 foldingStartMarker: /\b(?i:(function|package|procedure|try|type))\b/,
 foldingStopMarker: /\b(?i:(end))\b/,
 keyEquivalent: "^~P",
 name: "Pascal",
 patterns: 
  [{match: 
     /\b(?i:(absolute|abstract|all|and|and_then|array|as|asm|attribute|begin|bindable|case|class|const|constructor|destructor|div|do|do|else|end|except|export|exports|external|far|file|finalization|finally|for|forward|goto|if|implementation|import|in|inherited|initialization|interface|interrupt|is|label|library|mod|module|name|near|nil|not|object|of|only|operator|or|or_else|otherwise|packed|pow|private|program|property|protected|public|published|qualified|record|repeat|resident|restricted|segment|set|shl|shr|then|to|try|type|unit|until|uses|value|var|view|virtual|while|with|xor))\b/,
    name: "keyword.control.pascal"},
   {captures: 
     {1 => {name: "storage.type.prototype.pascal"},
      2 => {name: "entity.name.function.prototype.pascal"}},
    match: 
     /\b(?i:(function|procedure))\b\s+(\w+(\.\w+)?)(\(.*?\))?;\s*(?=(?i:attribute|forward|external))/,
    name: "meta.function.prototype.pascal"},
   {captures: 
     {1 => {name: "storage.type.function.pascal"},
      2 => {name: "entity.name.function.pascal"}},
    match: /\b(?i:(function|procedure))\b\s+(\w+(\.\w+)?)/,
    name: "meta.function.pascal"},
   {match: 
     /\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\.?[0-9]*)|(\.[0-9]+))((e|E)(\+|-)?[0-9]+)?)(L|l|UL|ul|u|U|F|f|ll|LL|ull|ULL)?\b/,
    name: "constant.numeric.pascal"},
   {captures: {1 => {name: "punctuation.definition.comment.pascal"}},
    match: /(--).*$\n?/,
    name: "comment.line.double-dash.pascal.one"},
   {captures: {1 => {name: "punctuation.definition.comment.pascal"}},
    match: /(\/\/).*$\n?/,
    name: "comment.line.double-slash.pascal.two"},
   {begin: /\(\*/,
    captures: {0 => {name: "punctuation.definition.comment.pascal"}},
    end: "\\*\\)",
    name: "comment.block.pascal.one"},
   {begin: /\{/,
    captures: {0 => {name: "punctuation.definition.comment.pascal"}},
    end: "\\}",
    name: "comment.block.pascal.two"},
   {begin: /"/,
    beginCaptures: {0 => {name: "punctuation.definition.string.begin.pascal"}},
    comment: 
     "Double quoted strings are an extension and (generally) support C-style escape sequences.",
    end: "\"",
    endCaptures: {0 => {name: "punctuation.definition.string.end.pascal"}},
    name: "string.quoted.double.pascal",
    patterns: [{match: /\\./, name: "constant.character.escape.pascal"}]},
   {applyEndPatternLast: 1,
    begin: /'/,
    beginCaptures: {0 => {name: "punctuation.definition.string.begin.pascal"}},
    end: "'",
    endCaptures: {0 => {name: "punctuation.definition.string.end.pascal"}},
    name: "string.quoted.single.pascal",
    patterns: 
     [{match: /''/, name: "constant.character.escape.apostrophe.pascal"}]}],
 scopeName: "source.pascal",
 uuid: "F42FA544-6B1C-11D9-9517-000D93589AF6"}
