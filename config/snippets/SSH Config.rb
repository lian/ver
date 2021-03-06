# Encoding: UTF-8

{"df" => 
  {scope: "source.ssh-config",
   name: "DynamicForward",
   content: "DynamicForward ${1:0000}"},
 "host" => 
  {scope: "source.ssh-config",
   name: "Host",
   content: 
    "Host ${1:AliasName}\n\tUser ${2:UserName}\n\tPort ${3:22}\n\tHostName ${4:hostname.com}\n"},
 "idf" => 
  {scope: "source.ssh-config",
   name: "IdentityFile",
   content: "IdentityFile ${1:~/.ssh/filename}"},
 "lf" => 
  {scope: "source.ssh-config",
   name: "LocalForward",
   content: "LocalForward ${1:LocalPort} ${2:DestHost}:${3:DestPort}"}}
