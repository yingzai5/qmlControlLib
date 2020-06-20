import QtQuick 2.12
import "../base/colorControl"

CButton {
    border.color:enabled ? (containsMouse ?(containsPress ? CSkin.btn_green_press_color : CSkin.btn_green_hover_color )
                                          :CSkin.btn_green_normal_color ) : CSkin.btn_green_disable_color

    txtcolor: CSkin.txt_green_color
    txthovercolor:  CSkin.txt_green_color
    width: 100
    height: 24
}
