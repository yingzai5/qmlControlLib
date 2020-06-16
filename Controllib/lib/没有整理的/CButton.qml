import QtQuick 2.12
import QtQuick.Controls 2.12
import "../skin/CSkin.js" as CSkin

Rectangle {
    id:root
    property alias text: txt.text
    property alias textsize:txt.font.pixelSize
    property string txtcolor: ""
    property string txthovercolor : ""
    property string bgnormalcolor: "transparent"
    property string bghovercolor : "transparent"
    property string bgpresscolor : "transparent"
    property string bgdisablecolor : "transparent"
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress

    signal clicked
    radius: 5
    color:{
        if(!enabled)
            bgdisablecolor
        else if(containsPress)
            bgpresscolor
        else
            containsMouse ? bghovercolor : bgnormalcolor
    }

    CText{
        id:txt
        color: containsMouse ? txthovercolor : txtcolor
        font.pixelSize : CSkin.font_normalSize
        font.family    : CSkin.font_family
        font.weight    : CSkin.font_weight
        anchors.centerIn: parent
    }

    MouseArea {
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.clicked();
        cursorShape: Qt.PointingHandCursor
    }
}
