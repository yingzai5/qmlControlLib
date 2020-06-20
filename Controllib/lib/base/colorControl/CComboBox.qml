import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls.Styles 1.4
import QtQuick.Templates 2.12 as T
import "../../theme"

T.ComboBox {
	id: control
	width: 255
	height: 22
	property color textColor: CSkin.combox_txt_color //"white" //文字颜色
    property color backgroundTheme: CSkin.combox_bgcolor

	property color backgroundColor: control.down ? Qt.darker(
													   backgroundTheme) : control.hovered ? Qt.lighter(backgroundTheme) : backgroundTheme
    property color itemHighlightColor: CSkin.combox_select_txtcolor
	property color itemNormalColor: backgroundTheme
	property color indicatorColor: "white" //勾选框颜色

	delegate: ItemDelegate {
		width: control.width
		CText {
			x: 10
			y: 10
			text: modelData
			color: control.textColor
			font.family: CSkin.font_family
			font.weight: CSkin.font_weight
			anchors.verticalCenter: parent.verticalCenter
		}
		highlighted: control.highlightedIndex === index

		background: Rectangle {
			//radius: control.radius
			color: (control.highlightedIndex
					=== index) ? CSkin.combox_select_bgcolor : CSkin.combox_bgcolor
			CText {
				y: 5
				visible: modelData === currentText //control.highlightedIndex === index
				text: qsTr("√")
				font.pixelSize: 14
				color: control.textColor
				font.bold: true
				anchors.right: parent.right
				anchors.rightMargin: 14
			}

			Rectangle {
				height: 1
				width: parent.width
				anchors.bottom: parent.bottom
				color: CSkin.combox_line_color
			}
		}
	}

	indicator: Canvas {
		id: canvas
		x: control.width - width - control.rightPadding
		y: control.topPadding + (control.availableHeight - height) / 2
		width: 12
		height: 8
	}

	contentItem: Rectangle {
		color: "transparent"
		Text {
			anchors.verticalCenter: parent.verticalCenter
			color: control.textColor
			x: 10
			text: currentText
		}
	}

	background: Rectangle {
		color: CSkin.combox_bgcolor
		border.color: CSkin.combox_border_color
		implicitWidth: 120
		implicitHeight: parent.height
	}

	popup: Popup {

		y: parent.height
		width: control.width

		implicitHeight: (contentItem.implicitHeight) + 2

		padding: 1
		contentItem: ListView {
			clip: true
			implicitHeight: contentHeight
			model: control.popup.visible ? control.delegateModel : null
			currentIndex: control.highlightedIndex
		}
		opacity: 0.95
		background: Rectangle {
			color: CSkin.combox_bgcolor
			border.width: 1
			border.color: CSkin.combox_border_color
		}
	}

	Rectangle {
		width: 22
		height: parent.height - 2
		anchors.right: parent.right
		anchors.rightMargin: 1
		anchors.top: parent.top
		anchors.topMargin: 1
		color: CSkin.combox_bgcolor
		Image {
			width: 22
			height: 22
			anchors.bottom: parent.bottom
			anchors.right: parent.right
			source: "qrc:/res/export/icon_jiantou.png"
			sourceSize: Qt.size(width, height)
			anchors.centerIn: parent
			fillMode: Image.TileHorizontally
			smooth: true
		}
	}
}
