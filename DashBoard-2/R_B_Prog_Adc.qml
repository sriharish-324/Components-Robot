import QtQuick 2.0
import QtQuick.Controls 2.0


Rectangle{
    property int counter: 0
    id:out_rect
    height:30
    width:60
    color: "light grey"
    Rectangle{
        id:left_rect
        height:30
        width:30
        color:"green"
        anchors.left:parent.left
        anchors.leftMargin: 0
        anchors.top:parent.top
        anchors.topMargin: 20
        Text {
            id: left_rect_text
            font.pointSize: 10
            color:"white"
            anchors.centerIn: parent
            text: qsTr("-")
        }
        MouseArea{
            anchors.fill:left_rect
            onClicked: {
                counter-=5
                server.sendText(t1_rect.text);
            }
            onPressed: {
                left_rect.color="black"
            }
            onReleased: {
                left_rect.color="green"
            }
        }
    }
    TextField{
        id:t1_rect
        anchors.left: left_rect.right
        anchors.leftMargin: 0
        anchors.top:parent.top
        anchors.topMargin: 20
        width:30
        height:30
        placeholderText: "0"
        font.pointSize: 10
        font.bold: true
        horizontalAlignment: TextInput.AlignHCenter
        verticalAlignment: TextInput.AlignVCenter
        text: parseInt(counter)
    }
    Rectangle{
        id:right_rect
        height:30
        width:30
        color:"green"
        anchors.left:t1_rect.right
        anchors.leftMargin: 0
        anchors.top:parent.top
        anchors.topMargin: 20
        Text {
            id: right_rect_text
            font.pointSize: 10
            color:"white"
            anchors.centerIn: parent
            text: qsTr("+")
        }
    }
    MouseArea{
        anchors.fill:right_rect
        onClicked: {
            counter+=5
            server.sendText(t1_rect.text)
        }
        onPressed: {
            right_rect.color="black"
        }
        onReleased: {
            right_rect.color="green"
        }
    }
}

