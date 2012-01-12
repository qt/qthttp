TEMPLATE = lib
CONFIG += staticlib
CONFIG -= shared

QT += network network-private

# Input
HEADERS += qhttp.h qringbuffer_p.h qhttpauthenticator_p.h
SOURCES += qhttp.cpp qhttpauthenticator.cpp

# Output
DESTDIR = "../../lib"
