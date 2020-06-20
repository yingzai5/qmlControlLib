import QtQuick 2.0
import QtQuick.Controls 2.12
//import QtQuick.Window 2.12
import QtQuick.Templates 2.12 as T
import "../../theme"

T.Dialog {
	id: root
	property alias headtext: t.text

	//固定属性默认值
	width: 640
	height: 480

	modal: true
	closePolicy: Popup.NoAutoClose
	topPadding: 0
	bottomPadding: 0
	leftPadding: 0
	rightPadding: 0

	Rectangle {
		id: id_main
		anchors.fill: parent
		border.color: CSkin.main_border_color
		border.width: CSkin.window_border_width
		color: CSkin.main_bgcolor

		//       //top
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
				anchors.leftMargin: 5
				anchors.verticalCenter: parent.verticalCenter
				color: CSkin.txt_normal_color
			}

            CImageButton{
				id: img
                img_normal:"qrc:/res/titlebar/close.png"
                img_hover: "qrc:/res/titlebar/close_hover.png"
				width: sourceSize.width
				height: sourceSize.height
				anchors.right: parent.right
				anchors.rightMargin: 10
				anchors.verticalCenter: parent.verticalCenter
                onClicked: root.reject()
				z: 1
                tipstr: "Close"
			}
			//拖动只能在主窗口界面内部
			//            MouseArea{
			//                property point clickPos
			//                property bool isPressed: false
			//                anchors.fill: parent
			//                onPressed: {
			//                    isPressed = true
			//                    clickPos = Qt.point(mouse.x, mouse.y)
			//                }
			//                onReleased: isPressed = false
			//                onPositionChanged: {
			////                    if (isPressed) {
			//                        var delta = Qt.point(mouse.x - clickPos.x, mouse.y - clickPos.y)
			//                        root.x += delta.x
			//                        root.y += delta.y
			////                    }
			//                }
			//            }
		}
	}
}//       }


/*##^##
Designer {
	D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

