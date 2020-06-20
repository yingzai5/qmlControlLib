import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Styles 1.4
import "lib/base/colorControl"
import "lib/theme"
import "lib/common"

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: CSkin.main_bgcolor
    CText{
        text: "test dome"
    }
//    CGrayButton{
    CButton{
       y:100
       text: "test button"
       onClicked: {
          CSkin.txt_normal_color = "red"
       }
    }
}






















//    Rectangle{
//        anchors.fill: parent
//        color: "#000000"
//        TextArea{
//          y:0
//          width: 640
//          height: 50
//          anchors.top: parent.top
//          anchors.left: parent.left
//          text: "1111"
//        }
//        TextField{
//           y:50
//           id:tf
//           //focus: true
//           text:"23123"
//           width: 100
//           height: 50
//        }
//        Button{
//            y:50
//            x:200
//            width: 100
//            height: 50
//           onClicked: {
//               tf.visible=true
//               tf.selectAll()
//               tf.focus = true
//           }
//        }
//        TextArea{
//            y:100
//            width: 640
//            height: 300
//            readOnly: true
//            text: "<h3 style = \"color: #FFFFFF\">Lorem ipsum dolor sit amet,</h3> "  +
//                  "<p style = \"color: #C0C0C0\"> &nbsp;  consectetur adipisicing elit, " + "<br>" +
//                  "    &nbsp;  sed do eiusmod tempor " + "<br>" +
//                  "incididunt ut labore et dolore magna " + "<br>" +
//                  "aliqua. Ut enim ad minim veniam, " + "<br>" +
//                  " quis nostrud exercitation " + "<br>" +
//                  " ullamco laboris nisi ut aliquip ex ea commodo cosnsequat.</p> ";
//            anchors.left: parent.left
//            textFormat: TextEdit.AutoText
//         }

//      CRoundRect{
//         leftTopRound: true
//         leftBottomRound: true
//         rightTopRound: true
//         rightBottomRound: true
//         width: 100
//         height: 100
//         radius: 10
//      }
//    }

//}
