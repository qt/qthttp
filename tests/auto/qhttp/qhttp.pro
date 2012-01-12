CONFIG += testcase
SOURCES  += tst_qhttp.cpp
INCLUDEPATH += "../../../include"
LIBS += -L../../../lib -lqhttp

QT = core network testlib

wince*: {
    webFiles.files = webserver/*
    webFiles.path = webserver
    cgi.files = webserver/cgi-bin/*
    cgi.path = webserver/cgi-bin
    addFiles.files = rfc3252.txt trolltech
    addFiles.path = .
    DEPLOYMENT += addFiles webFiles cgi
    DEFINES += SRCDIR=\\\"\\\"
} else:vxworks*: {
    DEFINES += SRCDIR=\\\"\\\"
} else {
    DEFINES += SRCDIR=\\\"$$PWD/\\\"
}

CONFIG+=insignificant_test # QTQAINFRA-428
