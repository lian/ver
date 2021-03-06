# Encoding: UTF-8

[{name: "Miscellaneous",
  scope: "source.mel",
  settings: {increaseIndentPattern: "^.*(\\{[^}\"']*|\\([^)\"']*)$"},
  uuid: "1C33AB7C-A008-4148-85CB-5303C7ED8CC5"},
 {name: "Symbol List",
  scope: "meta.function.mel",
  settings: 
   {showInSymbolList: 1,
    symbolTransformation: 
     "  \n\t\ts/(?:(?:global\\s*)?proc)\\s*(\\w+\\s*\\[?\\]?\\s+|\\s+)/ /g;\n\t\ts/\\s*\\(.*\\)?/ /g;\n \t"},
  uuid: "7FC6AD09-BA7B-4A76-BDFC-9D52BE631802"}]
