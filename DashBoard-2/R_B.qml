import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import QtQuick.Controls 1.3

Rectangle{
    property int x_value: 0
    property int y_value: 0
    property int z_value: 0
    id:window1
    Layout.fillWidth: true
    Layout.fillHeight: true
    color: "Light grey"
    border.color: "grey"
    border.width: 2
    radius: 10
    property int myw: width/3
    property int mhy: height/3
    property var activeScreen: null
    Loader{
        id:load1
    }
    Rectangle{
        id: button1
        anchors.top: window1.top
        anchors.topMargin: 5
        anchors.left: window1.left
        anchors.leftMargin: 10
        width: 57
        height: 30
        color: "grey"
        radius: 4
        Text {
            id: buttonText
            text: "Program"
            font.pointSize: 7
            font.bold: true
            color: "white"
            anchors.centerIn: button1
        }
        MouseArea {
            anchors.fill: button1
            onClicked: {
                console.log("Program Clicked")
                load1.source="R_B_Program.qml"
                load1.visible=true
            }
        }
    }
    Rectangle{
        id: button2
        anchors.top: window1.top
        anchors.topMargin: 5
        anchors.left: button1.right
        anchors.leftMargin: 5
        width: 83
        height: 30
        color: "grey"
        radius: 4
        Text {
            id: buttonText1
            text: "HomePosition"
            font.pointSize: 7
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: button2
            onClicked: {
                console.log("Home Position Clicked")
                load1.source="HomePosition.qml"
                load1.visible=true
            }
        }
    }
    Rectangle {
        id: button3
        anchors.top: window1.top
        anchors.topMargin: 5
        anchors.left: button2.right
        anchors.leftMargin: 5
        width: 83
        height: 30
        color: "grey"
        radius: 4
        Text {
            id: buttonText2
            text: "MechSettings"
            font.pointSize: 7
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: button3
            onClicked: {
                console.log("Mech Settings Clicked")
                load1.source="MechSettings.qml"
                load1.visible=true
            }
        }
    }
    Rectangle {
        id: button4
        anchors.top: window1.top
        anchors.topMargin: 5
        anchors.left: button3.right
        anchors.leftMargin: 5
        width: 95
        height: 30
        color: "grey"
        radius: 4
        Text {
            id: buttonText3
            text: "DisplaySettings"
            font.pointSize: 7
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: button4
            onClicked: {
                console.log("Display Settings Clicked")
                load1.source="DisplaySettings.qml"
                load1.visible=true
            }
        }
    }
    Rectangle {
        id: button5
        anchors.top: window1.top
        anchors.topMargin: 5
        anchors.left: button4.right
        anchors.leftMargin: 5
        width: 93
        height: 30
        color: "grey"
        radius: 4
        Text {
            id: buttonText4
            text: "MonitoringLog"
            font.pointSize: 7
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: button5
            onClicked: {
                console.log("Monitoring Log Clicked")
                load1.source="MonitoringLog.qml"
            }
        }
    }
}
