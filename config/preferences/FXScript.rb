# Encoding: UTF-8

[{name: "Symbol List: Exclude Colors",
  scope: "source.fxscript entity.name.function.color",
  settings: {showInSymbolList: 0},
  uuid: "7E143628-C80C-4CAC-9F5E-DED6A66CDF29"},
 {name: "Misc",
  scope: "source.fxscript",
  settings: 
   {decreaseIndentPattern: "^\\s*(end|next|else)\\b",
    highlightPairs: [["\"", "\""], ["(", ")"], ["{", "}"], ["[", "]"]],
    increaseIndentPattern: "^\\s*(if|else|on|for)\\b.*$",
    shellVariables: 
     [{name: "TM_COMMENT_START", value: "//\t"},
      {name: "TM_COMMENT_END", value: ""},
      {name: "TM_COMMENT_MODE", value: "line"}],
    smartTypingPairs: [["\"", "\""], ["(", ")"], ["{", "}"], ["[", "]"]]},
  uuid: "051C9F35-F904-4082-A164-0841A260208E"},
 {name: "Symbol List: Globals",
  scope: "source.fxscript variable.global.fxscript",
  settings: 
   {showInSymbolList: 1, symbolTransformation: "s/(.*)/\\tinput: $1/"},
  uuid: "30F79A23-EF2C-4DEB-93D1-69547C894B7B"}]
