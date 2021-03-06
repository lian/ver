# Encoding: UTF-8

[{name: "Comments",
  scope: "text.txt2tags",
  settings: 
   {shellVariables: 
     [{name: "TM_COMMENT_DISABLE_INDENT", value: "YES"},
      {name: "TM_COMMENT_START", value: "% "},
      {name: "TM_COMMENT_MODE", value: "line"},
      {name: "TM_COMMENT_START_2", value: "%%%"},
      {name: "TM_COMMENT_END_2", value: "%%%"},
      {name: "TM_COMMENT_MODE_2", value: "block"}]},
  uuid: "37D1F010-C1D8-4AE1-9E9B-23356FD7C17E"},
 {name: "Miscellaneous",
  scope: "text.txt2tags",
  settings: 
   {smartTypingPairs: 
     [["\"", "\""],
      ["(", ")"],
      ["{", "}"],
      ["[", "]"],
      ["“", "”"],
      ["‘", "’"],
      ["`", "`"]]},
  uuid: "B11166AF-3C5B-4494-87F1-FC0712FF795C"},
 {name: "Symbol List: Headers",
  scope: 
   "markup.heading.1.txt2tags,markup.heading.2.txt2tags,markup.heading.3.txt2tags,markup.heading.4.txt2tags,markup.heading.5.txt2tags",
  settings: 
   {showInSymbolList: 1,
    symbolTransformation: 
     "\n\t\ts/^\\s*//;                   # remove leading spaces\n\t\ts/\\s*=+(\\[[-\\w]+\\])?\\s*$//; # remove anchor and close marks =\n\t\ts/^=====\\s*/\\t\\t\\t\\t/;      # identify hierarchy with TABs\n\t\ts/^====\\s*/\\t\\t\\t/;\n\t\ts/^===\\s*/\\t\\t/;\n\t\ts/^==\\s*/\\t/;\n\t\ts/^=\\s*//;\n\t"},
  uuid: "BD01DD68-6B67-4768-A782-4BD8FD240FF2"}]
