# Encoding: UTF-8

{fileTypes: [],
 firstLineMatch: "^\\\\documentclass(\\[.*\\])?\\{beamer\\}",
 foldingStartMarker: /\\begin\{.*\}|%.*\(fold\)\s*$/,
 foldingStopMarker: /\\end\{.*\}|%.*\(end\)\s*$/,
 keyEquivalent: /^~B/,
 name: "LaTeX Beamer",
 patterns: 
  [{begin: /(?:\s*)((\\)begin)(\{)(frame)(\})/,
    captures: 
     {1 => {name: "support.function.be.latex"},
      2 => {name: "punctuation.definition.function.latex"},
      3 => {name: "punctuation.definition.arguments.begin.latex"},
      4 => {name: "variable.parameter.function.latex"},
      5 => {name: "punctuation.definition.arguments.end.latex"}},
    end: "((\\\\)end)(\\{)(frame)(\\})",
    name: "meta.function.environment.frame.latex",
    patterns: [{include: "$self"}]},
   {captures: 
     {1 => {name: "support.function.frametitle.latex"},
      2 => {name: "punctuation.definition.function.latex"},
      3 => {name: "punctuation.definition.arguments.begin.latex"},
      4 => {name: "entity.name.function.frame.latex"},
      5 => {name: "punctuation.definition.arguments.end.latex"}},
    match: /((\\)frametitle)(\{)(.*)(\})/,
    name: "meta.function.frametitle.latex"},
   {include: "text.tex.latex"}],
 scopeName: "text.tex.latex.beamer",
 uuid: "2ACA20AA-B008-469B-A04A-6DE232973ED8"}
