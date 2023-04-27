import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


Image {
    id:imagebutton
    source:'file:///C:/Qt/task1_2 updated/Images/Exit.png'
    height:50
    width:50
    //ToolTip.visible: MouseArea.hoverEnabled
    ToolTip.delay: 1000 // The tooltip will appear after 1 second of hovering
    ToolTip.text: "This is my image"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.info("image clicked!")
            server.sendText("EXIT CLICKED")
        }
    }
}
