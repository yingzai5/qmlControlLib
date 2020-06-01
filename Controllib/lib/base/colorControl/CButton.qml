/*-------------------------------
  * Author:Teacher zeng
  * Date  : 2020.05
  * Unit description: 用Rectangle自定义button控件
  */
import QtQuick 2.12
import QtQuick.Controls 2.12
import "../skin/CSkin.js" as CSkin
import QtQuick.Templates 2.12 as T

T.Button{
    id: root
    property alias txt:t.text
    property alias border: bg.border
    property alias color : bg.color
    property string txtcolor: ""
    property string txthovercolor : ""
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress
    CText {
       id:t
       anchors.centerIn: parent
       color: containsMouse ? txthovercolor : txtcolor
    }

    background: Rectangle{
        id:bg
        anchors.fill: root
        radius: 5
        color: "transparent"
    }
    MouseArea {
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled; //增加了这个效果才能使得area.containsMouse有效果
        onClicked: root.clicked();
        cursorShape: Qt.PointingHandCursor
    }

}
//Rectangle {
//    id:root
//    property alias text: txt.text
//    property string txtcolor: ""
//    property string txthovercolor : ""
//    property alias containsMouse: area.containsMouse
//    property alias containsPress: area.containsPress

//    signal clicked
//    radius: 5
//    color: "transparent"
//    Text{
//        id:txt
//        color: containsMouse ? txthovercolor : txtcolor
//        font.pixelSize : CSkin.font_normalSize
//        font.family    : CSkin.font_family
//        font.weight    : CSkin.font_weight
//        anchors.centerIn: parent
//    }

//    MouseArea {
//        id: area
//        anchors.fill: parent;
//        hoverEnabled: parent.enabled;
//        onClicked: root.clicked();
//        cursorShape: Qt.PointingHandCursor
//    }
//}
