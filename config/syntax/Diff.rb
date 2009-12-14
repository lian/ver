# Encoding: UTF-8

{fileTypes: ["diff", "patch"],
 firstLineMatch: 
  "(?x)^\n\t\t(===\\ modified\\ file\n\t\t|==== \\s* // .+ \\s - \\s .+ \\s+ ====\n\t\t|Index:\\ \n\t\t|---\\ [^%]\n\t\t|\\*\\*\\*.*\\d{4}\\s*$\n\t\t|\\d+(,\\d+)* (a|d|c) \\d+(,\\d+)* $\n\t\t|diff\\ --git\\ \n\t\t)\n\t",
 foldingStartMarker: /^\+\+\+/,
 foldingStopMarker: /^---|^$/,
 keyEquivalent: /^~D/,
 name: "Diff",
 patterns: 
  [{captures: {1 => {name: "punctuation.definition.separator.diff"}},
    match: /^((\*{15})|(={67})|(-{3}))$\n?/,
    name: "meta.separator.diff"},
   {match: /^\d+(,\d+)*(a|d|c)\d+(,\d+)*$\n?/, name: "meta.diff.range.normal"},
   {captures: 
     {1 => {name: "punctuation.definition.range.diff"},
      2 => {name: "meta.toc-list.line-number.diff"},
      3 => {name: "punctuation.definition.range.diff"}},
    match: /^(@@)\s*(.+?)\s*(@@)($\n?)?/,
    name: "meta.diff.range.unified"},
   {captures: 
     {3 => {name: "punctuation.definition.range.diff"},
      4 => {name: "punctuation.definition.range.diff"},
      6 => {name: "punctuation.definition.range.diff"},
      7 => {name: "punctuation.definition.range.diff"}},
    match: /^(((\-{3}) .+ (\-{4}))|((\*{3}) .+ (\*{4})))$\n?/,
    name: "meta.diff.range.context"},
   {captures: 
     {4 => {name: "punctuation.definition.from-file.diff"},
      6 => {name: "punctuation.definition.from-file.diff"},
      7 => {name: "punctuation.definition.from-file.diff"}},
    match: /(^(((-{3}) .+)|((\*{3}) .+))$\n?|^(={4}) .+(?= - ))/,
    name: "meta.diff.header.from-file"},
   {captures: 
     {2 => {name: "punctuation.definition.to-file.diff"},
      3 => {name: "punctuation.definition.to-file.diff"},
      4 => {name: "punctuation.definition.to-file.diff"}},
    match: /(^(\+{3}) .+$\n?| (-) .* (={4})$\n?)/,
    name: "meta.diff.header.to-file"},
   {captures: 
     {3 => {name: "punctuation.definition.inserted.diff"},
      6 => {name: "punctuation.definition.inserted.diff"}},
    match: /^(((>)( .*)?)|((\+).*))$\n?/,
    name: "markup.inserted.diff"},
   {captures: {1 => {name: "punctuation.definition.inserted.diff"}},
    match: /^(!).*$\n?/,
    name: "markup.changed.diff"},
   {captures: 
     {3 => {name: "punctuation.definition.inserted.diff"},
      6 => {name: "punctuation.definition.inserted.diff"}},
    match: /^(((<)( .*)?)|((-).*))$\n?/,
    name: "markup.deleted.diff"},
   {captures: 
     {1 => {name: "punctuation.separator.key-value.diff"},
      2 => {name: "meta.toc-list.file-name.diff"}},
    match: /^Index(:) (.+)$\n?/,
    name: "meta.diff.index"}],
 scopeName: "source.diff",
 uuid: "7E848FF4-708E-11D9-97B4-0011242E4184"}
