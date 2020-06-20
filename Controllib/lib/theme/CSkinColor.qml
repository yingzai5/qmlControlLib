/*-------------------------------
  * Author:Teacher zeng
  * Date  : 2020.06
  * Unit description: 单元主要定定义控件使用的颜色规范
  */
pragma Singleton //单实例处理

import QtQuick 2.0

QtObject {

    property string skinName: "nomal"

    //windows color  设计到窗口相关的颜色
    //命名说明：窗口_位置_用途 eg:main_top_bgcolor 表示主窗口的顶部的背景颜色
    property color  main_top_bgcolor     : "#13161A" //主窗口顶部栏背景颜色
    property color  main_toolbar_bgcolor : "#13161A" //主窗口工具栏的背景颜色
    property color  main_bgcolor         : "#1b1f24" //主窗口主背景颜色
    property color  main_border_color    : "#186B39" //主窗口边框颜色
    property color  main_line_color      : "#4A4E52" // 主窗口分割线的颜色

    property color  sub_top_bgcolor     : "#13161A" //子窗口顶部栏背景颜色
    property color  sub_toolbar_bgcolor : "#13161A" //子窗口工具栏的背景颜色
    property color  sub_bgcolor         : "#1b1f24" //子窗口主背景颜色
    property color  sub_border_color    : "#186B39" //子窗口边框颜色
    property color  sub_line_color      : "#4A4E52" //子窗口分割线的颜色

//    property color  sub_bgclor          : "#1F2329" //在主窗口的基础颜色上做区分的二级颜色
//    property color  border_greencolor    : "#34EB7C" //项目选中的外框颜色

    //命名说明 控件_种类_状态_类型 eg：btn_gray_normal_color 表示gray这种类型button的normal状态颜色

    //button_color
    property color  btn_green_normal_color  :"#34eb7c"//绿色按钮正常状态的边框（也可能是内部也是）颜色
    property color  btn_green_hover_color   :"#38ff88"//绿色按钮移动状态的边框（也可能是内部也是）颜色
    property color  btn_green_press_color   :"#34eb7c"//绿色按钮点击状态的边框（也可能是内部也是）颜色
    property color  btn_green_disable_color :"#1c8044"//绿色按钮不能用状态的边框（也可能是内部也是）颜色（这个可以没有）

    property color  btn_gray_normal_color  :"#cccccc"//灰色按钮正常状态的边框（也可能是内部也是）颜色
    property color  btn_gray_hover_color   :"#e5e5e5"//灰色按钮移动状态的边框（也可能是内部也是）颜色
    property color  btn_gray_press_color   :"#cccccc"//灰色按钮点击状态的边框（也可能是内部也是）颜色
    property color  btn_gray_disable_color :"#808080"//灰色按钮不能用状态的边框（也可能是内部也是）颜色（这个可以没有）

    property color  btn_red_normal_color  : "#000044"//红色按钮正常状态的边框（也可能是内部也是）颜色
    property color  btn_red_hover_color   : "#0000cc"//红色按钮移动状态的边框（也可能是内部也是）颜色
    property color  btn_red_press_color   : "#000088"//红色按钮点击状态的边框（也可能是内部也是）颜色
    property color  btn_red_disable_color : "#000000"//红色按钮不能用状态的边框（也可能是内部也是）颜色

    //txt 文字颜色
    property color  txt_normal_color      : "#FFFFFF" //正常状态文字统一的颜色
    property color  txt_hover_color       : "#FFFFFF" //移动状态文字统一的颜色
    property color  txt_green_color       : "#34EB7C" //绿色文字正常颜色
    property color  txt_green_hovercolor  : "#38FF88" //绿色文字移动上去的颜色
    property color  txt_gray_color        : "#C0C0C0" //灰色文字正常颜色
    property color  txt_gray_hover_color  : "#1EBD5D" //灰色文字移动上去的颜色
    property color  txt_black             : "#1B1F24" //黑色文字

    //input
    property color  input_bgcolor         : "#13161a" //输入框的背景颜色
    property color  input_border_color    : "#4a4e52" //输入框的边框颜色
    property color  input_select_txtcolor : "#ffffff" //输入框的文字选中颜色
    property color  input_select_bgcolor  : "#0076d6" //输入框的文字选中的背景颜色
    property color  input_txt_color       : "#ffffff" //输入框的正常文字颜色

    //pop
    property color  cb_pop_bgcolor        : "#171A1F"
    property color  cb_pop_select_bgcolor : "#2F3740"
    property color  cb_pop_bordercolor    : "#2D343C"
    property color  cb_pop_linecolor      : "#2D333C" //现在没有暂时未透明

    //Combox
    property color  combox_bgcolor         : "#171a1f" //下拉框的背景颜色
    property color  combox_border_color    : "#2d343c" //下拉框的边框颜色
    property color  combox_select_txtcolor : "#ffffff" //下拉框的选中字体颜色
    property color  combox_select_bgcolor  : "#2f3740" //下来框选中的背景颜色
    property color  combox_txt_color       : "#ffffff" //下拉框字体的颜色

    //listview head
    property color  lv_header_bgcolor      : "#0F1214"
    property color  lv_header_bdColor      : "transparent"// listview header边框颜色 暂时没有这个颜色
    property color  lv_header_item_normal_bgcolor : "#1B1F24"  //header item 背景颜色
    property color  lv_header_item_hover_bgcolor  : "#2F3740"  //header item 移动上去的颜色

    //menu
    property color  menu_gray_hovecolor  : "#22282e"
    property color  menu_bgcolor         : "#0f1214" //菜单背景颜色
    property color  menu_bgcolor_hover   : "#2f3740"
    property color  menu_border_color    : "#2D343C"
    property color  menu_Separator_color : "#2d333c"

}
