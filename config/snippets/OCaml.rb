# Encoding: UTF-8

{"for" => 
  {scope: "source.ocaml",
   name: "for loop",
   content: "for ${1:i} = ${2:startval} to ${3:endval} do\n\t$4\ndone\n$0"},
 "while" => 
  {scope: "source.ocaml",
   name: "while loop",
   content: "while ${1:condition} do\n\t$0\ndone"},
 "class" => 
  {scope: "source.ocaml",
   name: "class",
   content: 
    "class ${1:name} =\n\tobject ${2:(self)}\n\t\t${3:contents}\n\tend"},
 "fun" => 
  {scope: "source.ocaml",
   name: "function",
   content: "(fun ${1:()} -> ${2:body})"},
 "func" => 
  {scope: "source.ocaml",
   name: "function alt",
   content: 
    "(function\n| ${1:patt1} -> ${2:expr1}\n| ${3:patt2} -> ${4:expr2})"},
 "lin" => 
  {scope: "source.ocaml",
   name: "let in",
   content: "let ${1:var(s)} = ${2:expr} in ${3:expr2}"},
 "let" => 
  {scope: "source.ocaml", name: "let", content: "let ${1:var(s)} = ${0:expr}"},
 "|" => 
  {scope: "source.ocaml",
   name: "match pattern",
   content: "| ${1:pattern} -> $0"},
 "match" => 
  {scope: "source.ocaml",
   name: "match",
   content: 
    "match ${1:value} with\n| ${2:patt} -> ${3:expr}\n| ${4:_} -> ${5:expr2}"},
 "method" => 
  {scope: "source.ocaml", name: "method", content: "method ${1:name} = $0"},
 "module" => 
  {scope: "source.ocaml",
   name: "module",
   content: "module ${1:Name} = struct\n\t$0\nend"},
 nil => 
  {scope: "source.ocaml",
   name: "new pattern match",
   content: "\n| ${1:patt} -> ${2:expr}"},
 "type" => 
  {scope: "source.ocaml", name: "type", content: "type ${1:name} = $0"},
 "cr" => {scope: "source", name: "CR", content: "(* CR `whoami`: $1 *)$0"},
 "doc" => {scope: "source.ocaml", name: "Document", content: "(** [$1] $0 *)"},
 "begin" => 
  {scope: "source.ocaml", name: "begin", content: "begin\n\t$0\nend"},
 "~f" => 
  {scope: "source.ocaml",
   name: "function label",
   content: "~f:(fun ${1:()} -> ${2:body})"},
 "sig" => 
  {scope: "source.ocaml",
   name: "module signature",
   content: "module ${1:Name} : sig\n\t$0\nend"},
 "mtype" => 
  {scope: "source.ocaml",
   name: "module type",
   content: "module type ${1:Name} = sig\n\t$0\nend"},
 "try" => 
  {scope: "source.ocaml",
   name: "try",
   content: "try\n\t$0\nwith\n| _ -> failwith \"Unknown\""},
 "thread" => 
  {scope: "source.ocaml",
   name: "untitled",
   content: "ignore (Thread.create (fun () -> \n    $0\n  ) ())"}}
