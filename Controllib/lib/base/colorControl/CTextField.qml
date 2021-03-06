/**
  *author      : Teacher zeng
  *Create data : 2020.05
  *functional description: 自定义一个TextField
  */

import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Templates 2.12 as T
import "../../theme"

T.TextField {
   property alias radius: bg.radius
   id:root
   topPadding: 10
   bottomPadding: 10
   rightPadding: 10
   leftPadding: 10
   color: CSkin.txt_normal_color
   selectByMouse: true
   focus: true
   background: Rectangle {
       id:bg
       color: CSkin.input_bgcolor
       border.color: CSkin.input_border_color
   }
   placeholderTextColor: CSkin.input_phTextColor
   selectedTextColor: CSkin.input_select_txtcolor
   selectionColor: CSkin.input_select_bgcolor
   font.pixelSize     : CThemeSet.font_normalSize
   font.family        : CThemeSet.font_family
   font.weight        : CThemeSet.font_weight
   font.letterSpacing : CThemeSet.font_letterspac

}
