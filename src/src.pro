#-------------------------------------------------
#
# Project created by QtCreator 2015-09-03T07:52:50
#
#-------------------------------------------------
TARGET = QMLMathGL
TEMPLATE = lib
CONFIG += qt plugin c++11

ios {
    CONFIG += static
    DEFINES += STATIC_BUILD
    QMAKE_MOC_OPTIONS += -Muri=QMLMathGL
}

TARGET = $$qtLibraryTarget($$TARGET)
uri = com.mycompany.qmlcomponents

QT += qml quick widgets opengl openglextensions

DEFINES += SRC_LIBRARY

SOURCES += \
    graph.cpp \
    qmlmathglplugin.cpp

HEADERS += \
    graph.h \
    qmlmathglplugin.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

DISTFILES = qmldir

DESTDIR = $$OUT_PWD/../dist/QMLMathGL
HEADERS_DESTDIR = $$OUT_PWD/../dist/include

RESOURCES += \
    qmldir.qrc


!equals(_PRO_FILE_PWD_, $$OUT_PWD) {
    copy_qmldir.target = $$DESTDIR/qmldir
    copy_qmldir.depends = $$_PRO_FILE_PWD_/imports/QMLMathGL/qmldir
    copy_qmldir.commands = $(COPY_FILE) \"$$replace(copy_qmldir.depends, /, $$QMAKE_DIR_SEP)\" \"$$replace(copy_qmldir.target, /, $$QMAKE_DIR_SEP)\"
    QMAKE_EXTRA_TARGETS += copy_qmldir
    PRE_TARGETDEPS += $$copy_qmldir.target
}

qmldir.files = qmldir
unix {
    installPath = $$[QT_INSTALL_QML]/$$replace(uri, \\., /)
    qmldir.path = $$installPath
    target.path = $$installPath
    INSTALLS += target qmldir
}
