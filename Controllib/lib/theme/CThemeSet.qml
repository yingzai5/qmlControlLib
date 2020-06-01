pragma Singleton //单实例处理

import QtQuick 2.0

QtObject {

    //font
    property int    font_normalSize : 12
    property int    font_pixelSize  : 12
    property string font_family     : "Roboto"
    property string font_weight     : "Light"
    property real   font_letterspac : 0.5

    //距离相关
    property int  window_top_height   : 22
    property int  window_border_width : 1
    property real menu_opacity        : 0.95
    property int  menu_border_width   : 1

}
