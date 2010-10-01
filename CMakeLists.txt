# Copyright (C) 2007-2009 LuaDist.
# Submitted by David Manura
# Redistribution and use of this file is allowed according to the terms of the MIT license.
# For details see the COPYRIGHT file distributed with LuaDist.
# Please note that the package source code is licensed under its own license.

PROJECT(luaxml C)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)
INCLUDE(dist.cmake)

IF (MSVC)
  ADD_DEFINITIONS(-TP) # treat as C++ for C99-ish features
  SET(WORKAROUND _cpp)
ENDIF (MSVC)

ADD_LUA_MODULE(luaXML_lib LuaXML_lib${WORKAROUND}.c)

# Install all files and documentation
INSTALL (TARGETS luaXML_lib DESTINATION ${INSTALL_CMOD})
INSTALL (FILES LuaXml.lua DESTINATION ${INSTALL_LMOD}/)
INSTALL (FILES test.lua test.xml DESTINATION ${INSTALL_EXAMPLE})
INSTALL (FILES readme.txt LuaXml.cdr LuaXml.png DESTINATION ${INSTALL_DATA})
