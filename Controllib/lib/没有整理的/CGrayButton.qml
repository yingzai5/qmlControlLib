import QtQuick 2.12
import "../skin/CSkin.js" as CSkin

CButton {

    border.color:enabled ? (containsMouse ?(containsPress ? CSkin.btn_gray_press_color : CSkin.btn_gray_hover_color )
                                          :CSkin.btn_gray_normal_color ) : CSkin.btn_gray_disable_color
    txtcolor: CSkin.txt_gray_color
    txthovercolor: CSkin.txt_gray_color
    width: 100
    height: 24
}
