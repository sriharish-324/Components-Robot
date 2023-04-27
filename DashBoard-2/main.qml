import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0


Window {
    property bool windowflag: true
    id: windows
    width: 926
    minimumWidth: 450
    height: 564
    minimumHeight: 250
    visible: true
    title: qsTr("BIT HMI")
    property int rectRadius: 50
    Rectangle {
        id:root
        anchors.fill: parent
        color: "lightblue"
    }
    LoginPrompt {
        id:loginPrompt

    }

    Popup {
        id: popup
        width: 300
        height: 150
        anchors.centerIn: parent
        property bool flag: true
        Text {
            text: popup.flag ? qsTr("LOGIN SUCCESS!!") : qsTr("LOGIN FAILURE!!")
            font.pointSize: 20
            anchors.centerIn: parent

        }
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        background: Rectangle {
            anchors.fill: parent
            color: popup.flag ? "green" : "red"
        }
    }
}
