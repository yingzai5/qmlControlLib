//________________________________________
//zxy 2020年4月24日
//CSkin.js  建立与皮肤相关的一些配置常量
//
//________________________________________

//windows color  设计到窗口相关的颜色
//命名说明：窗口_位置_用途 eg:main_top_bgcolor 表示主窗口的顶部的背景颜色

var main_title_bgcolor   = "#20252A"    //主窗口顶部标题栏
var main_toolbar_bgcolor = "#20252A"    //主窗口功能栏的颜色
var main_navi_bgcolor    = "#20252A"    //主窗口左侧导航栏的颜色
var main_noitem_bgcolor  = "#293036"    //主窗口没有导入内容的背景颜色
var main_item_bgcolor    = "#171A1F"    //主窗口导入内容的背景颜色（编辑区）
var main_bg_color        = "#20252A"    //主窗口相关的背景颜色
var main_foldhd_bgcolor  = "#171A1F"    //所有的

//var main_top_bgcolor     = "#13161A"   //
var main_top_bgcolor     = "#20252A"
var main_bgcolor         = "#171A1F"
//var main_toolbar_bgcolor = "#13161A"
//var main_bgcolor         = "#1b1f24"
var main_border_color    = "#186B39" //窗口边框颜色
var main_line_color      = "#4A4E52"
var main_black_line_color= "#000000"

var secd_bgclor          = "#1C2026" //在子窗口的基础颜色上做区分的二级颜色
var border_greencolor    = "#34EB7C" //项目选中的外框颜色

var item_select_bordercolor  = "#1EBD5D"
var item_unselect_bordercolor= "#49535E"

//命名说明 控件_种类_状态_类型 eg：btn_gray_normal_color 表示gray这种类型button的normal状态颜色
//button_color
var btn_green_normal_color  ="#34eb7c"//绿色按钮正常状态的边框（也可能是内部也是）颜色
var btn_green_hover_color   ="#38ff88"//绿色按钮移动状态的边框（也可能是内部也是）颜色
var btn_green_press_color   ="#34eb7c"//绿色按钮点击状态的边框（也可能是内部也是）颜色
var btn_green_disable_color ="#282f36"//绿色按钮不能用状态的边框（也可能是内部也是）颜色（这个可以没有）
var btn_green_normal_border_color="transparent" //能使用时候的边框颜色
var btn_green_disable_border_color="#4A4E52"    //不能使用时候的边框颜色

var btn_gray_normal_color  ="#cccccc"//灰色按钮正常状态的边框（也可能是内部也是）颜色
var btn_gray_hover_color   ="#e5e5e5"//灰色按钮移动状态的边框（也可能是内部也是）颜色
var btn_gray_press_color   ="#cccccc"//灰色按钮点击状态的边框（也可能是内部也是）颜色
var btn_gray_disable_color ="#808080"//灰色按钮不能用状态的边框（也可能是内部也是）颜色（这个可以没有）

var btn_gray_plus_normal_color  ="#5E6D80"//深灰色按钮正常状态的边框（也可能是内部也是）颜色
var btn_gray_plus_hover_color   ="#667a93"//深灰色按钮移动状态的边框（也可能是内部也是）颜色
var btn_gray_plus_press_color   ="#545f6d"//深灰色按钮点击状态的边框（也可能是内部也是）颜色
var btn_gray_plus_disable_color   ="#282f36"

var btn_red_normal_color  = "#D54029"//红色按钮正常状态的边框（也可能是内部也是）颜色
var btn_red_hover_color   = "#dc452e"//红色按钮移动状态的边框（也可能是内部也是）颜色
var btn_red_press_color   = "#c2412e"//红色按钮点击状态的边框（也可能是内部也是）颜色
var btn_red_disable_color = ""//红色按钮不能用状态的边框（也可能是内部也是）颜色

var btn_bule_normal_color = "#00ACED" //蓝色按钮正常状态的边框（也可能是内部也是）颜色
var btn_bule_hover_color  = "#06a4e0" //蓝色按钮移动状态的边框（也可能是内部也是）颜色
var btn_bule_press_color  = "#0c8bbb" //蓝色按钮点击状态的边框（也可能是内部也是）颜色
var btn_bule_disable_color = "" //蓝色按钮不能用状态的边框（也可能是内部也是）颜色

var btn_bule_plus_normal_color = "#1877F2" //深蓝色按钮正常状态的边框（也可能是内部也是）颜色
var btn_bule_plus_hover_color  = "#188af2" //深蓝色按钮移动状态的边框（也可能是内部也是）颜色
var btn_bule_plus_press_color  = "#186cf2" //深蓝色按钮点击状态的边框（也可能是内部也是）颜色
var btn_bule_plus_disable_color = "" //深蓝色按钮不能用状态的边框（也可能是内部也是）颜色

//txt 文字颜色
//
var txt_normal_color     = "#FFFFFF"
var txt_disable_color    = "#66FFFFFF"
var txt_green_color      = "#34EB7C"
var txt_green_hovercolor = "#38FF88"
var txt_gray_color       = "#C0C0C0"
var txt_hover_bgcolor    = "#1EBD5D"
var txt_black            = "#1B1F24"

//input
var input_bgcolor         = "#13161a" //输入框的背景颜色
var input_border_color    = "#4a4e52" //输入框的边框颜色
var input_select_txtcolor = "#ffffff" //输入框的文字选中颜色
var input_select_bgcolor  = "#0076d6" //输入框的文字选中的背景颜色
var input_txt_color       = "#ffffff" //输入框的正常文字颜色
var input_phTextColor     = "#999999" //输入框中默认文字颜色

//Combox
var combox_bgcolor         = "#171a1f" //下拉框的背景颜色
var combox_border_color    = "#2d343c" //下拉框的边框颜色
var combox_select_txtcolor = "#ffffff" //下拉框的选中字体颜色
var combox_select_bgcolor  = "#2f3740" //下来框选中的背景颜色
var combox_txt_color       = "#ffffff" //下拉框字体的颜色
var combox_line_color      = "#2d333c"
var combox_opacity         = 0.95

//checkBox
var cb_check_img        = "qrc:/res/selected.png"
var cb_uncheck_img      = "qrc:/res/no_selected.png"
var cb_txt_normal_color = "#C0C0C0"
var cb_txt_hover_color  = "#FFFFFF"
var Cb_txt_press_color  = "#FFFFFF"

var cb_pop_bgcolor        = "#171A1F"
var cb_pop_select_bgcolor ="#2F3740"
var cb_pop_bordercolor    = "#2D343C"
var cb_pop_linecolor      = "#2D333C" //现在没有暂时未透明

//listview head
var lv_header_bgcolor      = "#0f1214"
var lv_header_bdColor      = "transparent"// listview header边框颜色 暂时没有这个颜色
var lv_header_item_normal_bgcolor = "#1B1F24"  //header item 背景颜色
var lv_header_item_hover_bgcolor  = "#2F3740"  //header item 移动上去的颜色

//menu
var menu_gray_hovecolor = "#22282e"
var menu_bgcolor = "#0f1214" //菜单背景颜色
var menu_bgcolor_hover = "#2f3740"
var menu_opacity = 0.95
var menu_border_color = "#2D343C"
var menu_border_width = 1
var menu_Separator_color = "#2d333c"

//Progress
var progress_bgcolor     = "transparent"
var progress_hovercolor  = "#1ebd5d"

//font
var font_normalSize = 12
var font_pixelSize = 12
var font_family     = "Roboto"
var font_weight     = "Light"
var font_letterspac = 0.5

//window
var window_top_height   = 22
var window_border_width = 1

//dialog
var dialog_border_color = "#186B39"
var dialog_border_width = 1
var dialog_titleBar_height = 22
var dialog_titleBar_bgColor = "#20252A"
var dialog_conten_bgColor = "#171A1F"




