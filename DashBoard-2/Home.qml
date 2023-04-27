import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Image {
    id:imagebutton
    source:'file:///C:/Qt/task1_2 updated/Images/Home.png'
    height:50
    width:50
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.info("image clicked!")
            server.sendText("HOME CLICKED");
        }
    }
}





