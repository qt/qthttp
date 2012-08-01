load(qt_module)

TARGET = QtHttp
CONFIG += static
CONFIG -= shared
QT = core network

CONFIG += module
MODULE_PRI = ../../modules/qt_http.pri
MODULE = http

load(qt_module_config)

# Input
HEADERS += qhttp.h qringbuffer_p.h qhttpauthenticator_p.h
SOURCES += qhttp.cpp qhttpauthenticator.cpp
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0
