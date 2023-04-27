import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtQuick.Layouts 1.0

Image {
    property int flag: 1
    id:imagebutton
    source:'file:///C:/Qt/task1_2 updated/Images/on.png'
    height:70
    width:70
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.info("image clicked!")
            if(imagebutton.source == 'file:///C:/Qt/task1_2 updated/Images/on.png'){
                imagebutton.source='file:///C:/Qt/task1_2 updated/Images/off.png';
                flag=0;
                server.sendText("Start Clicked")
            }
            else{
                imagebutton.source='file:///C:/Qt/task1_2 updated/Images/on.png';
                flag=1;
                server.sendText("Stop Clicked")
            }
        }
    }
}
