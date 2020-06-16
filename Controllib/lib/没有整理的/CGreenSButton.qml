/**
  *author      : Teacher zeng
  *Create data : 2020.05
  *functional description:
  */
import QtQuick 2.0
import "../skin/CSkin.js" as CSkin

CButton {
    txtcolor: enabled ? CSkin.txt_black : CSkin.txt_disable_color
    border.color:enabled ? CSkin.btn_green_normal_border_color:CSkin.btn_green_disable_border_color

    bgnormalcolor: CSkin.btn_green_normal_color
    bghovercolor : CSkin.btn_green_hover_color;
    bgpresscolor : CSkin.btn_green_press_color;
    bgdisablecolor: CSkin.btn_green_disable_color;
    width: 100
    height: 24

}
