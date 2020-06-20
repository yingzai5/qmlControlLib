/**
  *author      : Teacher zeng
  *Create data : 2020.06
  *functional description: 分割线
  */
import QtQuick 2.0
import "../../theme"

Rectangle{
    property bool ishorizontal : false //是否是水平的

    height: ishorizontal ? 1 : parent.height
    width: ishorizontal ? parent.width : 1
    color: CSkin.main_black_line_color
}
