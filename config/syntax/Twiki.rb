# Encoding: UTF-8

{keyEquivalent: /^~T/,
 name: "Twiki",
 patterns: 
  [{begin: /"/,
    beginCaptures: {0 => {name: "punctuation.definition.string.begin.twiki"}},
    end: "\"",
    endCaptures: {0 => {name: "punctuation.definition.string.end.twiki"}},
    name: "string.quoted.double.twiki",
    patterns: [{match: /\\./, name: "constant.character.escape.twiki"}]},
   {captures: 
     {1 => {name: "punctuation.definition.heading.twiki"},
      2 => {name: "entity.name.function.twiki"}},
    match: /^(-{3}\+{1,6})(.*)$/,
    name: "markup.heading.twiki"},
   {begin: /(<)verbatim(>)|(<)pre(>)/,
    captures: 
     {1 => {name: "punctuation.definition.tag.twiki"},
      2 => {name: "punctuation.definition.tag.twiki"},
      3 => {name: "punctuation.definition.tag.twiki"},
      4 => {name: "punctuation.definition.tag.twiki"}},
    end: "(</)verbatim(>)|(</)pre(>)",
    name: "markup.raw.twiki",
    patterns: [{match: /\\./, name: "constant.character.escape.twiki"}]},
   {match: /^-{3,}$\n/, name: "meta.separator.twiki"},
   {begin: /^ {3}([a-zA-Z0-9]+: )/,
    captures: 
     {1 => {name: "markup.other.def.term.twiki"},
      2 => {name: "markup.other.def.def.twiki"}},
    end: "$\\n?",
    name: "markup.other.def.twiki",
    patterns: [{include: "#list-paragraph"}]},
   {begin: /^(\|)/,
    beginCaptures: {1 => {name: "punctuation.definition.table.twiki"}},
    end: "^(?:\\s*$|(?=\\s*>|[=-]{3,}$))",
    name: "markup.other.table.twiki",
    patterns: [{include: "#inline"}]},
   {begin: /^ {3}(\*)/,
    beginCaptures: {1 => {name: "punctuation.definition.list_item.twiki"}},
    end: "$\\n?",
    name: "markup.list.unnumbered.1.twiki",
    patterns: [{include: "#list-paragraph"}]},
   {begin: /^ {6}(\*)/,
    beginCaptures: {1 => {name: "punctuation.definition.list_item.twiki"}},
    end: "$\\n?",
    name: "markup.list.unnumbered.2.twiki",
    patterns: [{include: "#list-paragraph"}]},
   {begin: /^ {9}(\*)/,
    beginCaptures: {1 => {name: "punctuation.definition.list_item.twiki"}},
    end: "$\\n?",
    name: "markup.list.unnumbered.3.twiki",
    patterns: [{include: "#list-paragraph"}]},
   {begin: /^ {12}(\*)/,
    beginCaptures: {1 => {name: "punctuation.definition.list_item.twiki"}},
    end: "$\\n?",
    name: "markup.list.unnumbered.4.twiki",
    patterns: [{include: "#list-paragraph"}]},
   {begin: /^ {15}(\*)/,
    beginCaptures: {1 => {name: "punctuation.definition.list_item.twiki"}},
    end: "$\\n?",
    name: "markup.list.unnumbered.5.twiki",
    patterns: [{include: "#list-paragraph"}]},
   {begin: /^ {18}(\*)/,
    beginCaptures: {1 => {name: "punctuation.definition.list_item.twiki"}},
    end: "$\\n?",
    name: "markup.list.unnumbered.6.twiki",
    patterns: [{include: "#list-paragraph"}]},
   {begin: /^ {3}\d/,
    end: "$\\n?",
    name: "markup.list.numbered.1.twiki",
    patterns: [{include: "#numlist-paragraph"}]},
   {begin: /^ {6}\d/,
    end: "$\\n?",
    name: "markup.list.numbered.2.twiki",
    patterns: [{include: "#numlist-paragraph"}]},
   {begin: /^ {9}\d/,
    end: "$\\n?",
    name: "markup.list.numbered.3.twiki",
    patterns: [{include: "#numlist-paragraph"}]},
   {begin: /^ {12}\d/,
    end: "$\\n?",
    name: "markup.list.numbered.4.twiki",
    patterns: [{include: "#numlist-paragraph"}]},
   {begin: /^ {15}\d/,
    end: "$\\n?",
    name: "markup.list.numbered.5.twiki",
    patterns: [{include: "#numlist-paragraph"}]},
   {begin: /^ {18}\d/,
    end: "$\\n?",
    name: "markup.list.numbered.6.twiki",
    patterns: [{include: "#numlist-paragraph"}]},
   {begin: /^(?=\S)/,
    end: "^\\s*$",
    name: "meta.paragraph.twiki",
    patterns: [{include: "#inline"}, {include: "text.html.basic"}]}],
 repository: 
  {inline: 
    {patterns: 
      [{captures: 
         {1 => {name: "punctuation.definition.bold.twiki"},
          2 => {name: "punctuation.definition.bold.twiki"}},
        match: /([\*])[\s\w :.\?']*([\*])/,
        name: "markup.bold.twiki"},
       {captures: 
         {1 => {name: "markup.bold.twiki"},
          2 => {name: "markup.italic.twiki"},
          3 => {name: "punctuation.definition.bold.twiki"},
          4 => {name: "punctuation.definition.italic.twiki"},
          5 => {name: "punctuation.definition.bold.twiki"},
          6 => {name: "punctuation.definition.italic.twiki"}},
        match: /((((__))[\s\w :.\?']*((__))))/},
       {captures: 
         {1 => {name: "punctuation.definition.italic.twiki"},
          2 => {name: "punctuation.definition.italic.twiki"}},
        match: /\b(_)[\s\w :.\?']*(_)\b/,
        name: "markup.italic.twiki"},
       {captures: 
         {1 => {name: "markup.bold.twiki"},
          2 => {name: "markup.raw.fixed.twiki"},
          3 => {name: "punctuation.definition.bold.twiki"},
          4 => {name: "punctuation.definition.raw.fixed.twiki"},
          5 => {name: "punctuation.definition.bold.twiki"},
          6 => {name: "punctuation.definition.raw.fixed.twiki"}},
        match: /((((\=\=))[\s\w :.\?']*((\=\=))))/},
       {captures: 
         {1 => {name: "punctuation.definition.raw.fixed.twiki"},
          2 => {name: "punctuation.definition.raw.fixed.twiki"}},
        match: /(\=)[\s\w :.\?']*(\=)/,
        name: "markup.raw.fixed.twiki"},
       {captures: 
         {1 => {name: "punctuation.definition.variable.twiki"},
          3 => {name: "punctuation.definition.variable.twiki"}},
        match: /(%)([A-Z0-9]+)(%)/,
        name: "variable.other.twiki"},
       {captures: 
         {1 => {name: "punctuation.definition.constant.twiki"},
          3 => {name: "punctuation.definition.constant.twiki"}},
        match: /(&)([a-zA-Z0-9]+|#[0-9]+|#x[0-9a-fA-F]+)(;)/,
        name: "constant.character.entity.html"},
       {captures: 
         {1 => {name: "punctuation.definition.link.twiki"},
          2 => {name: "markup.underline.link.twiki"},
          3 => {name: "punctuation.definition.link.twiki"},
          4 => {name: "punctuation.definition.link.twiki"},
          5 => {name: "string.other.link.title.twiki"},
          6 => {name: "punctuation.definition.link.twiki"}},
        match: /(\[)([^\]]*)(\]) *(\[)(.*?)(\])/,
        name: "meta.link.inline"}]},
   :"list-paragraph" => 
    {patterns: 
      [{begin: /\G\s+\S/,
        end: "^\\s*$",
        name: "markup.list.unnumbered.paragraph",
        patterns: [{include: "#inline"}, {include: "text.html.basic"}]}]},
   :"numlist-paragraph" => 
    {patterns: 
      [{begin: /\G\s+\S/,
        end: "^\\s*$",
        name: "markup.list.numbered.paragraph",
        patterns: [{include: "#inline"}, {include: "text.html.basic"}]}]}},
 scopeName: "text.html.twiki",
 uuid: "B2FD7223-BE64-4134-B43D-F7443EA54CCD"}
