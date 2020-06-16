/**
  * author      : Teacher zeng
  * Create data : 2020.05
  * functional description:
  * FS 1.0.4 版本再做筛选的时候需要自定一个弹框，弹框内容实现CheckBox的复选
  * 返回值：每次切换的时候发出sigStatusChanged信号，和修改model中的状态值
    Model 数据中传递的名字：
    text: filtername
    checked: checkedflag
  */

import QtQuick 2.0
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import "../skin/CSkin.js" as CSkin
import "../component"
import "../basiccontrol"

Popup{
    property alias sourcemodel: lv_check.model
    property bool isSelect : false
    signal sigStatusChanged

    id: menu_root
    topPadding: 0
    bottomPadding: 0
    leftPadding: 0
    rightPadding: 0
    opacity: CSkin.combox_opacity
    implicitHeight: contentItem.implicitHeight + 22

    contentItem: ListView{
        id:lv_check
        anchors.top: parent.top
        anchors.topMargin: 11

        spacing: 8
        orientation: ListView.Vertical
        delegate: menu_cb
        clip: true
        implicitHeight: contentHeight
        ScrollIndicator.vertical: ScrollIndicator { }

    }

    background :Rectangle{
        implicitWidth: 184
        implicitHeight: 124
        border.width: 1
        border.color: CSkin.combox_border_color
        color: CSkin.combox_bgcolor
    }

    Component {
        id:menu_cb

        Rectangle
        {
            property alias containsMouse: area.containsMouse
            width: lv_check.width - 2;
            x:1 //这个地方只能使用固定的值
            height:20
            color: containsMouse ? CSkin.combox_select_bgcolor : CSkin.combox_bgcolor

            CCheckBox
            {
                id:id_text1
                anchors.left: parent.left
                anchors.leftMargin:  17
                text: filtername
                checked: checkedflag
            }
            MouseArea{
                id : area
                anchors.fill: parent
                hoverEnabled: true //当这个值设置为True的时候 才能使containsMouse在悬停的时候触发
                onClicked:{
                   checkedflag = ! checkedflag
                   setIsSelect()
                   sigStatusChanged()
                }
            }
        }
    }
    onIsSelectChanged:
    {
        //点击关闭close按钮的时候  将所有的变成checkedflag
        if(!isSelect)
        {
            for(var i = 0 ; i < sourcemodel.count; i++ ){
               sourcemodel.get(i).checkedflag = false
               sigStatusChanged()
            }        
        }
    }

    //当有一个条件为真的时候  标记值就为真
    function setIsSelect(){
    var flag = false
        for(var i = 0 ; i < sourcemodel.count; i++ ){
           if(sourcemodel.get(i).checkedflag)
           {
               flag = true
               break;
           }
        }
        isSelect = flag
    }
}

