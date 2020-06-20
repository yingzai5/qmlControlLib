/**
  *author      : Teacher zeng
  *Create data : 2020.05
  *functional description:
  */

import QtQuick.Controls 2.5
import QtQuick 2.12
import QtQuick.Templates 2.12 as T
import QtQuick.Controls 2.12
import "../../theme"

T.RadioButton {
    id:root
    width: 117
    height: 20
    background: Rectangle{
      anchors.fill: root
      color: root.hovered ? CSkin.cb_pop_select_bgcolor : CSkin.cb_pop_bgcolor
    }
    indicator: Image {
        id:img
        anchors.left: parent.left
        anchors.leftMargin: 12
        anchors.verticalCenter: root.verticalCenter
        fillMode: Image.Tile
        source: checked ? "qrc:///res/selected.png" : "qrc:///res/no_selected.png"
    }

    contentItem: CText {
        text: root.text
        opacity: enabled ? 1.0 : 0.3
        color: root.hovered ? (root.down ? CSkin.Cb_txt_press_color : CSkin.cb_txt_hover_color) : CSkin.cb_txt_normal_color
        verticalAlignment: Text.AlignVCenter
        anchors.left: img.right
        anchors.leftMargin: 10
    }
}
