import QtQuick 2.12
import QtQuick.Controls 2.12
import "../component"

Rectangle {
    property alias text: t.text
    property alias model: cbox.model
    property alias currentIndex: cbox.currentIndex
    property int rightMargin: 10
    property int cbleftMargin: 80
    property int cb_width: 200 //combobox宽度

    id: root
    width: cb_width + t.width
    height: 24

    CText {
        id: t
        anchors.right: cbox.left
        anchors.rightMargin: root.rightMargin
        anchors.verticalCenter: root.verticalCenter
        wrapMode: Text.WordWrap
    }

    CComboBox {
        id: cbox
        width: cb_width
        anchors.right: root.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        //anchors.verticalCenter: root.verticalCenter
    }
}

