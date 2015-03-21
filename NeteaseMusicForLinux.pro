TEMPLATE = app

QT += qml quick

SOURCES += src/main.cpp \
    src/netease_api/neteaseapi.cpp \
    src/appcontroller.cpp

RESOURCES += qml.qrc \
    images.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    src/netease_api/neteaseapi.h \
    src/appcontroller.h
