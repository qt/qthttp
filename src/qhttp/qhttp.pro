load(qt_module)

TARGET = QtHttp
CONFIG += static
CONFIG -= shared
QT = core network

MODULE_PRI = ../../modules/qt_http.pri
MODULE = http

# Input
HEADERS += qhttp.h qringbuffer_p.h qhttpauthenticator_p.h
SOURCES += qhttp.cpp qhttpauthenticator.cpp
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0
