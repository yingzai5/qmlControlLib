/**
  *author      : Teacher zeng
  *Create data : 2020.05
  *functional description:
  */

import QtQuick.Controls 2.5
import QtQuick 2.12
import QtQuick.Templates 2.12 as T
import "../../theme"

T.CheckBox {
    id:root
    width: 100
    height: 20
    indicator: Image {
        id:img
        anchors.verticalCenter: root.verticalCenter
        fillMode: Image.Tile
        source: checked ? "qrc:///res/selected.png" : "qrc:///res/no_selected.png"
    }

    contentItem: Text {
        text: root.text
        opacity: enabled ? 1.0 : 0.3
        color: root.hovered ? (root.down ? CSkin.Cb_txt_press_color : CSkin.cb_txt_hover_color) : CSkin.cb_txt_normal_color
        verticalAlignment: Text.AlignVCenter
        anchors.left: img.right
        anchors.leftMargin: 10
        font.pixelSize     : CThemeSet.font_normalSize
        font.family        : CThemeSet.font_family
        font.weight        : CThemeSet.font_weight
        font.letterSpacing : CThemeSet.font_letterspac
        elide: Text.ElideRight
    }
}

