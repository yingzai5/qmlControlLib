/**
  *author      : Teacher zeng
  *Create data : 2020.05
  *functional description: 定义popup的弹框的样式
  */

import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Templates 2.12 as T
import "../skin/CSkin.js" as CSkin

T.Popup {
    topPadding: 0
    bottomPadding: 0
    leftPadding: 0
    rightPadding: 0

    background :Rectangle{
        implicitWidth: parent.width
        implicitHeight: parent.height
        border.width: 1
        border.color: CSkin.combox_border_color
        color: CSkin.combox_bgcolor
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
