TEMPLATE = app

CONFIG += debug
QT += qml quick widgets

SOURCES += main.cpp controller.cpp configuration.cpp section.cpp setting.cpp
HEADERS += controller.h configuration.h section.h setting.h

RESOURCES += qml.qrc \
             translations.qrc

target.path = "$$PREFIX/usr/bin/"

desktop_file.path = "$$PREFIX/usr/share/applications/"
desktop_file.files = data/sddm-config-editor.desktop

lupdate_only {
  SOURCES += ui/*.qml config-strings.qml
}
TRANSLATIONS = sddm-config-editor_zh_CN.ts

INSTALLS += desktop_file target

