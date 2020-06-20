/*-------------------------------
  * Author:Teacher zeng
  * Date  : 2020.06
  * Unit description: 基础单元text单元 统一样式和字体
  */
import QtQuick 2.0
import QtQuick.Controls 2.12
import "../../theme"


Text {
   color: CSkin.txt_normal_color
   font.pixelSize     : CThemeSet.font_normalSize
   font.family        : CThemeSet.font_family
   font.weight        : CThemeSet.font_weight
   font.letterSpacing : CThemeSet.font_letterspac
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:20;width:200}
}
##^##*/
