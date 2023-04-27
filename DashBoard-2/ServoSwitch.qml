import QtQuick 2.0
import QtQuick.Controls 2.0

Switch {
    id: control

    indicator: Rectangle {
        implicitWidth: 60
        implicitHeight: 26
        radius: 13
        color: control.checked ? "#17a81a" : "#ffffff"
        border.color: control.checked ? "#17a81a" : "#cccccc"
        Rectangle {
            x: control.checked ? parent.width - width : 0
            width: 26
            height: 26
            radius: 13
            color: control.down ? "#cccccc" : "#ffffff"
            border.color: control.checked ? (control.down ? "#17a81a" : "#21be2b") : "#999999"
            Text {
                id: name
                text: control.checked ? "ON" : "OFF"
                font.bold: true
                anchors.centerIn: parent
            }
        }
    }
    onClicked:  {
        server.sendText(control.text)
    }
}
