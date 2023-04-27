import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Image {
    property int flag: 1
    property int click:1
    id:imagebutton
    source:'file:///C:/Qt/task1_2 updated/Images/pause.png'
    height:70
    width:70
    MouseArea {
        anchors.fill: parent
        onClicked: {
            console.info("Run clicked!")
            if(flag==1){
                imagebutton.source='file:///C:/Qt/task1_2 updated/Images/run.png';
                flag=0;
                click=0;
                server.sendText("Run Clicked")

            }
            else {
                imagebutton.source='file:///C:/Qt/task1_2 updated/Images/pause.png';
                flag=1;
                click=1;
                server.sendText("Pause Clicked")

            }

        }

    }

    //        Text {
    //            id: runpause_txt
    //            text: click?"Pause":"Run"
    //            font.bold:true
    //            font.pointSize: 12
    //            anchors.top: imagebutton.bottom
    //            anchors.topMargin: 0
    //            anchors.left:imagebutton.left
    //            anchors.leftMargin: 13
    //        }
}

