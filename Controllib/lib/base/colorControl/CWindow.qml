import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import "../../theme"

Window{
    id: root
    property alias headtext: t.text

    //固定属性默认值
    width: 640
    height: 480
    signal sigclose

    modality: Qt.WindowModal
    flags   : Qt.FramelessWindowHint | Qt.Window

    Rectangle {
        id: id_main
        anchors.fill: parent
        border.color: CSkin.main_border_color
        border.width: CThemeSet.window_border_width
        color: CSkin.main_bgcolor

        //top
        Rectangle {
            id: id_top
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: CThemeSet.window_border_width
            height: CThemeSet.window_top_height
            color: CSkin.main_top_bgcolor

            CText {
                id: t
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.verticalCenter: parent.verticalCenter
                color: CSkin.txt_normal_color
            }

            CImageButton{
                id: img
                img_normal:"qrc:/res/public/sub_close.png"
                img_hover: "qrc:/res/public/sub_close_hover.png"
                img_press: "qrc:/res/public/sub_close_press.png"
                width: sourceSize.width
                height: sourceSize.height
                anchors.right: parent.right
                anchors.rightMargin: 1
                anchors.verticalCenter: parent.verticalCenter
                onClicked: {
                    sigclose()
                    root.close()
                }
                z: 1
                tipstr: "Close"
            }
            Rectangle{
                height: 1
                width: parent.width
                color: CSkin.main_black_line_color
                anchors.left: parent.left
                anchors.bottom: parent.bottom
            }
            //拖动只能在主窗口界面内部
            MouseArea{
                property point clickPos
                property bool isPressed: false
                anchors.fill: parent
                onPressed: {
                    isPressed = true
                    clickPos = Qt.point(mouse.x, mouse.y)
                }
                onReleased: isPressed = false
                onPositionChanged: {
                        var delta = Qt.point(mouse.x - clickPos.x, mouse.y - clickPos.y)
                        root.x += delta.x
                        root.y += delta.y
                }
            }
        }
    }
}
