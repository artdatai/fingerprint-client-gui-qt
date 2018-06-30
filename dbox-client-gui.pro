#-------------------------------------------------
#
# Project created by QtCreator 2018-06-30T09:39:52
#
#-------------------------------------------------

QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = dbox-client-gui
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        dboxclient.cpp

HEADERS += \
        dboxclient.h

FORMS += \
        dboxclient.ui

#Suprema scanner
unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lUFScanner
INCLUDEPATH += $$PWD/../../../../usr/local/include/suprema
DEPENDPATH += $$PWD/../../../../usr/local/include/suprema

#OpenCV 4.0.0-pre
unix:!macx: LIBS += -L$$PWD/../../../../usr/local/lib/ -lopencv_world
INCLUDEPATH += $$PWD/../../../../usr/local/include
DEPENDPATH += $$PWD/../../../../usr/local/include
