# Encoding: UTF-8

{"b" => 
  {scope: 
    "(source.objc | source.objc++) & meta.scope.implementation.objc - meta.function-with-body",
   name: "- (BOOL)method",
   content: "- (BOOL)${1:method}\n{\n\treturn ${2:value};\n}\n"},
 "iba" => 
  {scope: "(source.objc | source.objc++) & meta.scope.interface",
   name: "- (IBAction)decl;",
   content: "- (IBAction)${1:method}:(id)sender;"},
 "id" => 
  {scope: 
    "(source.objc | source.objc++) & meta.scope.implementation.objc - meta.function-with-body",
   name: "- (id)method",
   content: "- (id)${1:method}\n{\n\treturn ${2:object};\n}"},
 "i" => 
  {scope: 
    "(source.objc | source.objc++) & meta.scope.implementation.objc - meta.function-with-body",
   name: "- (int)method",
   content: "- (int)${1:method}\n{\n\treturn ${2:value};\n}\n"},
 "v" => 
  {scope: 
    "(source.objc | source.objc++) & meta.scope.implementation.objc - meta.function-with-body",
   name: "- (void)method",
   content: "- (void)${1:method}${2::(id)sender}\n{\n\t$0\n}\n"},
 "awa" => 
  {scope: 
    "(source.objc | source.objc++) & meta.scope.implementation.objc - meta.function-with-body",
   name: "- awakeFromNib",
   content: "- (void)awakeFromNib\n{\n\t$0\n}\n"},
 "d" => 
  {scope: 
    "(source.objc | source.objc++) & meta.scope.implementation.objc - meta.function-with-body",
   name: "- dealloc",
   content: 
    "- (void)dealloc\n{\n\t[${1:ivar} release];\n\t[super dealloc];\n}\n"},
 "init" => 
  {scope: 
    "(source.objc | source.objc++) & meta.scope.implementation.objc - meta.function-with-body",
   name: "- init",
   content: 
    "- (id)init\n{\n\tif((self = [super init]))\n\t{\n\t\t$0\n\t}\n\treturn self;\n}\n"},
 "fm" => 
  {scope: "source.objc, source.objc++",
   name: "NSFileManager",
   content: 
    "NSFileManager${TM_C_POINTER: *}${1:fm} = [NSFileManager defaultManager];"},
 "enum" => 
  {scope: "source.objc, source.objc++",
   name: "NSEnumerator Loop",
   content: 
    "NSEnumerator${TM_C_POINTER: *}${2:${1:string}Enum} = [${3:$1Array} objectEnumerator];\n${5:id} ${4:curr${1/(.)(.*)/\\U$1\\E$2/}};\n\nwhile (($4 = [$2 nextObject])) {\n    $0\n}"},
 "ws" => 
  {scope: "source.objc, source.objc++",
   name: "NSWorkspace",
   content: 
    "NSWorkspace${TM_C_POINTER: *}${1:workspace} = [NSWorkspace sharedWorkspace];"},
 "during" => 
  {scope: "source.objc, source.objc++",
   name: "NS_DURING block",
   content: "NS_DURING\n\t$0\nNS_HANDLER\nNS_ENDHANDLER"},
 "ar" => 
  {scope: "source.objc, source.objc++",
   name: "NSArray With Objects",
   content: 
    "NSArray${TM_C_POINTER: *}${1:array} = [NSArray arrayWithObjects:\n\t\t\t\t\t\t${2:object},$0\n\t\t\t\t\t\tnil];"},
 "dd" => 
  {scope: "source.objc, source.objc++",
   name: "NSDictionary With Objects and Keys",
   content: 
    "NSDictionary${TM_C_POINTER: *}${1:dict} = [NSDictionary dictionaryWithObjectsAndKeys:\n\t${2:object}, ${3:key},$0\n\tnil];\n"},
 "post" => 
  {scope: "source.objc, source.objc++",
   name: "Post Notification",
   content: 
    "[[NSNotificationCenter defaultCenter] postNotificationName:$1 object:self];"},
 "ro" => 
  {scope: "source.objc, source.objc++",
   name: "Remove Observer",
   content: "[[NSNotificationCenter defaultCenter] removeObserver:self];"},
 "nn" => 
  {scope: "source.objc, source.objc++",
   name: "[NSNumber ...",
   content: "[NSNumber numberWith${1:Int}:${2:value}]"},
 "rr" => 
  {scope: "source.objc, source.objc++",
   name: "[object release];",
   content: "[${1:object} release];"},
 "can" => 
  {scope: "source.objc, source.objc++",
   name: "Cancel Perform Selector",
   content: 
    "[NSObject cancelPreviousPerformRequestsWithTarget:${1:self} selector:@selector(${2:method}:) object:${3:nil}];"},
 "oi" => 
  {scope: "meta.bracketed.objc",
   name: "objectAtIndex",
   content: "objectAtIndex:${1:i}"},
 "oe" => 
  {scope: "meta.bracketed.objc",
   name: "objectEnumerator",
   content: "objectEnumerator"},
 "ok" => 
  {scope: "meta.bracketed.objc",
   name: "objectForKey",
   content: "objectForKey:"},
 "perf" => 
  {scope: "source.objc, source.objc++",
   name: "Perform Selector",
   content: 
    "[self performSelector:@selector(${1:method}:) withObject:${2:nil} afterDelay:${3:1.0}];"},
 "ff" => 
  {scope: "source.objc, source.objc++",
   name: "NSString With Format",
   content: 
    "[NSString stringWithFormat:@\"${1:%@}\"${1/([^%]|%%)*(%.)?.*/(?2:, :])/}$2${1/([^%]|%%)*(%.)?.*/(?2:])/}"},
 "so" => 
  {scope: "meta.bracketed.objc",
   name: "setObject:forKey:",
   content: "setObject:$1 forKey:"}}
