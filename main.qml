import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import com.example 1.0

Window {
    width: 926
    minimumWidth: 450
    height: 564
    minimumHeight: 250
    visible: true
    title: qsTr("BIT HMI")
    Rectangle {
        id:root
        anchors.fill: parent
        color: "lightblue"
        L_S{
            id: leftscreen
            anchors.left: root.left
            anchors.leftMargin: 5
            anchors.top: root.top
            anchors.topMargin: 5
            anchors.bottom: root.bottom
            anchors.bottomMargin: 5
            radius:5
            height:root.height*0.99
            width:root.width*0.40

        }
        R_T{
            id:rightscreen
            anchors.top: root.top
            anchors.topMargin: 5
            anchors.left: leftscreen.right
            anchors.leftMargin: 5
            anchors.right:root.right
            anchors.rightMargin: 5
            width:root.width*0.60
            height:root.height*0.50
            radius:5
        }

        R_B{
            anchors.top: rightscreen.bottom
            anchors.topMargin: 5
            anchors.left: leftscreen.right
            anchors.leftMargin: 5
            anchors.right:root.right
            anchors.rightMargin: 5
            anchors.bottom: root.bottom
            anchors.bottomMargin: 5
            width:root.width*0.60
            height:root.height*0.50
            radius:5
        }
    }
}
