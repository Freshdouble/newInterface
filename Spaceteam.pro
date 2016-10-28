#-------------------------------------------------
#
# Project created by QtCreator 2016-10-28T15:16:01
#
#-------------------------------------------------

QT       += core gui qml quickwidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Spaceteam
TEMPLATE = app


SOURCES += main.cpp\
        mainwind.cpp \
    kommunikation.cpp

HEADERS  += mainwind.h \
    kommunikation.h

FORMS    += mainwind.ui \
    kommunikation.ui

DISTFILES += \
    MainWindowForm.ui.qml \
    MainWindow.qml
