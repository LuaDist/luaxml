package = "LuaXML"
version = "1.7.5-1"
source = {
   url = "git://github.com/LuaDist/luaxml",
   dir = '.'
}
description = {
   summary = "a module that maps between Lua and XML without much ado",
   detailed = [[
LuaXML provides a minimal set of functions for the processing of XML
data in Lua. It offers a very simple and natural mapping between the
XML data format and Lua tables, which allows one to parse XML data
just using Lua's normal table access and iteration methods:
Substatements and text content is represented as array data having
numerical keys, attributes and tags use string keys. This
representation makes sure that the structure of XML data is exactly
preserved in a read/write cycle.
   ]],
   homepage = "http://viremo.eludi.net/LuaXML/",
   license = "MIT/X11",
   maintainer = "djerius@cfa.harvard.edu"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      LuaXML_lib = "LuaXML_lib.c",
      LuaXML = "LuaXML.lua",
   }
}
