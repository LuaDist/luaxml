# Copyright (C) 2007-2012 LuaDist.
# Submitted by David Manura
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

project ( luaxml C )
cmake_minimum_required ( VERSION 2.8 )
include ( cmake/dist.cmake )
include ( lua )

if ( MSVC )
  add_definitions ( -TP )
  # treat as C++ for C99-ish features
  set ( WORKAROUND _cpp )
endif ( MSVC )

install_lua_module ( luaXML_lib LuaXML_lib${WORKAROUND}.c )
install_lua_module ( LuaXml LuaXml.lua )
install_test ( test.lua test.xml )
install_data ( readme.txt )
install_foo ( LuaXml.cdr LuaXml.png )
