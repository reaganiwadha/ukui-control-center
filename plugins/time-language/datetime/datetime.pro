#-------------------------------------------------
#
# Project created by QtCreator 2019-06-29T15:08:41
#
#-------------------------------------------------

QT       += widgets dbus x11extras

TEMPLATE = lib
CONFIG += plugin

TARGET = $$qtLibraryTarget(datetime)
DESTDIR = ../../../pluginlibs


include(../../../env.pri)
include($$PROJECT_COMPONENTSOURCE/switchbutton.pri)


INCLUDEPATH   +=  \
                 $$PROJECT_COMPONENTSOURCE \
                 $$PROJECT_ROOTDIR \


LIBS += -L/usr/lib/ -lgsettings-qt

##加载gio库和gio-unix库，用于处理时间
CONFIG        += link_pkgconfig \
                 C++11
PKGCONFIG     += gio-2.0 \
                 gio-unix-2.0 \
                 gsettings-qt \

#DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
        datetime.cpp \
    changtime.cpp \
    worldMap/zoneinfo.cpp \
    worldMap/toolpop.cpp \
    worldMap/timezonemap.cpp \
    worldMap/timezonechooser.cpp \
    worldMap/poplistdelegate.cpp \
    worldMap/poplist.cpp

HEADERS += \
        datetime.h \
    changtime.h \
    worldMap/zoneinfo.h \
    worldMap/toolpop.h \
    worldMap/timezonemap.h \
    worldMap/timezonechooser.h \
    worldMap/poplistdelegate.h \
    worldMap/poplist.h

FORMS += \
        datetime.ui \
    changtime.ui

RESOURCES += \
    tz.qrc

DISTFILES +=
