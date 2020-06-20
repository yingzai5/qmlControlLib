/**
  *author      : Teacher zeng
  *Create data : 2020.06
  *functional description: 主要用户不同状态下的button 显示移动和正常效果
  * 这个地方我们暂时只做两种状态下的按钮  select 和 noselect 状态
  */
import QtQuick 2.0
import QtQuick.Controls 2.12
import "../../theme"

Image {
    id:root
    property string img_normal : ""
    property string img_hover  : ""
    property string img_select_normal : ""
    property string img_select_hover  : ""

    property bool select:false

    signal clicked

    source: select ? (area.containsMouse ? img_select_hover:img_select_normal  )
                   : (area.containsMouse ? img_hover : img_normal)//
    MouseArea{
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.clicked();
        cursorShape: Qt.PointingHandCursor
    }
}
