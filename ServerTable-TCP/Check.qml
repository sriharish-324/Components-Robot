import QtQuick 2.0

Rectangle{
    width:50
    height:50

Rectangle {
    id: checkbox
    width: 30
    height: 30
    anchors.centerIn:parent
    border.color:checked? "green":"red"
    border.width: 2
    color: checked ? "green" : "white"
    radius: 2
    property bool checked: false

    MouseArea {
        anchors.fill: parent
        onClicked: {
            checkbox.checked = !checkbox.checked
        }
    }

    Image {
        id: checkmark
        source: "file:///C:/Users/sriha/Downloads/yes.png"
        width: parent.width * 0.7
        height: parent.height * 0.7
        anchors.centerIn: parent
        visible: checkbox.checked
    }
}
}
