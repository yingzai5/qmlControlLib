//zxy
//主要实现输入框的功能，这个基础控件暂时只使用在单行显示的效果还可以
//多行的控件可能还需要重新绘制 TextInput控件主要就是支持一行的显示的

import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import "../skin/CSkin.js" as CSkin

Rectangle {
    id: root
    property string bordercolor: CSkin.input_border_color
    property alias text: tx.text
    property int margins: 4

    border.color: bordercolor
    color: CSkin.input_bgcolor
    TextInput{  //
        id: tx
        color: CSkin.input_txt_color
        anchors.fill: parent
        anchors.margins: margins
        clip: true
        font.pixelSize : CSkin.font_normalSize
        font.family    : CSkin.font_family
        font.weight    : CSkin.font_weight
        selectByMouse : true //表示可以选中
        selectedTextColor: CSkin.input_select_txtcolor
        selectionColor: CSkin.input_select_bgcolor
//        wrapMode: TextEdit.WrapAnywhere  //因为只显示单行  所以这个控件不支持换行

    }
}
