import QtQuick 2.4
import QtQuick.Controls 1.6

Item {
    id:root
    width: 600
    height: 60

    property int button_height: 24
    property int margin: 8
    opacity: 0.6
    Column{
        width: 562
        height: 48
        //anchors.margins: 4
        spacing: 4

    //! 打开串口
    Row {
        id: row_open
        width: 560
        spacing:8

        //width: 640

        //height: button_height
        Button {
            id: button_open
            //height: parent.height
            //anchors.left: parent.left
            //anchors.leftMargin: 4
            text: qsTr("打开串口")


        }

        Text {
            id: text_SerialPort
            height: 24

           // height: parent.height
            text: qsTr("串口行")
            //anchors.left: button_open.right
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.wordSpacing: 0.8
            font.pixelSize: 14
        }

        ComboBox {
            id: comboBox_SerialPort
            width: 428
            //currentText: qsTr("未检测到设备")
            //width: 300
           // height: parent.height
            //anchors.left: text_SerialPort.right

            //anchors.right: parent.right

            // width: root.width - button_open.width - text_serialPort.width - 16


        }
    }

    //刷新设备
    Row{
        id:row_Refresh
        width: 560
        //height: button_height
        spacing:8
        Button{
            id:button_Refresh
            height: parent.height
            text:qsTr("刷新设备")
        }
        Text {
            id: text_DataBits
            height: parent.height
            text: qsTr("数据位")
            font.pixelSize: 14
            //anchors.left: button_Refresh.right
            anchors.leftMargin: margin
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        ComboBox{
            id:comboBox_DataBits
            width: 30
           // editable: true 这个属性控制是否可编译
            height: parent.height
            //anchors.left: text_DataBits.right
            anchors.leftMargin: margin
            currentIndex: 3
            model:["5","6","7","8","9"]
        }
        Text {
            id: text_StopBits
            height: 24
            text: qsTr("停止位")
            font.pixelSize: 14
            //anchors.left: comboBox_DataBits.right
            anchors.leftMargin: margin
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        ComboBox{
            id:comboBox_stopBits
            width: 54
            height: parent.height
            //anchors.left: text_StopBits.right
            anchors.leftMargin: margin
            model: ["1","1.5","2"]
        }
        Text {
            id: text_BaudTate
            text: qsTr("波特率")
            font.pixelSize: 14
            //anchors.left: comboBox_stopBits.right
            anchors.leftMargin: margin
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            height:parent.height
        }
        ComboBox{
            id:comboBox_BaudRate
            width: 78
            height: parent.height
            //anchors.left: text_BaudTate.right
            anchors.leftMargin: margin
            currentIndex: 0
            model:["9600"]
        }
        Text {
            id: text_Parity
            text: qsTr("奇偶校验位")
            font.pixelSize: 14
            //anchors.left: comboBox_BaudRate.right
            anchors.leftMargin: margin
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            height:parent.height
        }
        ComboBox{
            id:comboBox_Parity
            width: 64
            //anchors.left: text_Parity.right
            anchors.leftMargin: margin
            height: parent.height
            model:[qsTr("None"),qsTr("Even"),qsTr("Odd"),qsTr("Space"),qsTr("Mark")]

        }

    }
    }
}
