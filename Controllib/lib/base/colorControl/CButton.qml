import QtQuick 2.12
import QtQuick.Controls 2.12
import "../../theme"

Rectangle {
    id:root
    property alias text: txt.text
    property alias textsize:txt.font.pixelSize
    property string txtcolor: CSkin.txt_normal_color
    property string txthovercolor : CSkin.txt_hover_color
    property string bgnormalcolor: "transparent"
    property string bghovercolor : "transparent"
    property string bgpresscolor : "transparent"
    property string bgdisablecolor : "transparent"
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress
    width: 80
    height: 20
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
