import QtQuick 2.9
import QtQuick.Window 2.2


Window {
    visible: true
    width: 720
    height: 480
    title: qsTr("Hello World")

    Text {
        id: name
        text: qsTr("text")
        anchors.centerIn: parent
    }

    SerialPortPanel{
        width:640
    }



}
