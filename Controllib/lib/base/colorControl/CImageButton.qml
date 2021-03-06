import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Styles 1.4
import "../../theme"

Image {
    id: root
    //image
    property string img_normal : ""
    property string img_hover  : ""
    property string img_press  : ""
    property string img_disable: ""

    //text color
    property string txt_normal_color : "transparent"
    property string txt_hover_color  : "transparent"
    property string txt_press_color  : "transparent"
    property string txt_disable_color: "transparent"

    property alias text: t.text
    property alias containsMouse: area.containsMouse
    property alias containsPress: area.containsPress
    property string tipstr: ""

    signal clicked


    width  : sourceSize.width
    height : sourceSize.height


    source: enabled ? (containsMouse ?(containsPress ? img_press : img_hover )
                                    :img_normal ) : img_disable

    CText {
        id: t
        color: enabled ? (containsMouse ?(containsPress ? txt_press_color : txt_hover_color )
                                         :txt_normal_color ) : txt_disable_color
    }

    ToolTip.text: tipstr
    ToolTip.delay: 300
    ToolTip.visible:area.containsMouse && (tipstr !=="")

    MouseArea{
        id: area
        anchors.fill: parent;
        hoverEnabled: parent.enabled;
        onClicked: root.clicked();
        cursorShape: Qt.PointingHandCursor
    }
}
