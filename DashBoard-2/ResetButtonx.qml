import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
Rectangle{
    Image {
        id:imagebutton
        source:'file:///C:/Qt/task1_2 updated/Images/clear.png'
        height:50
        width:50
        anchors.left: parent.left
        anchors.leftMargin: 70
        anchors.top: parent.top
        anchors.topMargin: 50
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.info("image clicked!")
                //server.sendText("Reseted")
                imagebutton.source='file:///C:/Qt/task1_2 updated/Images/clear.png'
            }
            onDoubleClicked:
            {
                server.sendText("X Reseted")
                imagebutton.source='file:///C:/Qt/task1_2 updated/Images/orange.png'
            }
        }
    }
    Label{
        id:out
        text:"Current Position"
        font.bold:true
        font.pointSize: 8
        anchors.horizontalCenter: imagebutton.horizontalCenter
        anchors.top:imagebutton.top
        anchors.topMargin:60
    }
    Label{
        text:"0"
        font.bold:true
        font.pointSize: 10
        anchors.horizontalCenter: imagebutton.horizontalCenter
        anchors.top:out.bottom
        anchors.topMargin: 20
    }
    Label{
        id:out1
        text:"Offset"
        font.bold:true
        font.pointSize: 10
        anchors.top:out.bottom
        anchors.topMargin:40
        anchors.horizontalCenter: imagebutton.horizontalCenter
    }
    Label{
        text:"0"
        font.bold:true
        font.pointSize: 10
        anchors.horizontalCenter: imagebutton.horizontalCenter
        anchors.top:out1.bottom
        anchors.topMargin: 40
    }
}
