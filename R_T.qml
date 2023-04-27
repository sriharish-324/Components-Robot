import QtQuick 2.6
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0
import com.example 1.0


Rectangle{
    property int flag1: 1
    id:mainrect
    color: "Light grey"
    border.color: "grey"
    MarkerModel {
        id: markerModel
    }
    Popup {
        id: popUp
        width: 400
        height: 300
        x: markerBox.x + markerBox.width
        y: markerBox.y + markerBox.height
        modal: true
        focus: true
        anchors.centerIn: mainrect
        ColumnLayout{
            //anchors.fill: popUp
            anchors.margins: 5
            spacing : 20
            RowLayout{
                id:popRow1
               // anchors.fill: parent
                anchors.margins: 5
                //anchors.top: popUp.Top | popUp.Center
                Label {
                    text: "Marker"
                }
            }

            RowLayout{
                id:popRow2
                //    anchors.fill: parent
                //  anchors.margins: 5

                ColumnLayout{
                    width:popRow2.width/2
                    id:col1
                    spacing:30
                    Row {
                        spacing: 10
                        width: col2.width
                        height: 50

                        Text {
                            id: xVal1
                            text: qsTr("X:")
                            width: 70
                            height:20
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                        }
                        Rectangle {
                            width: parent.width/2- 5
                            radius: 5
                            height: 20
                            color: xValue1.focus ? "white" : "light gray"
                            TextInput {
                                id: xValue1
                                focus: true
                                activeFocusOnTab: true
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                    }
                    Row {
                        spacing: 10
                        width: col2.width
                        height: 50

                        Text {
                            id: yVal1
                            text: qsTr("Y:")
                            width: 70
                            height:20
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                        }
                        Rectangle {
                            width: parent.width/2- 5
                            radius: 5
                            height: 20
                            color: yValue1.focus ? "white" : "light gray"
                            TextInput {
                                id: yValue1
                                focus: true
                                activeFocusOnTab: true
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                    }
                    Row {
                        spacing: 10
                        width: col2.width
                        height: 50

                        Text {
                            id: zVal1
                            text: qsTr("Z:")
                            width: 70
                            height:20
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                        }
                        Rectangle {
                            width: parent.width/2- 5
                            radius: 5
                            height: 20
                            color: zValue1.focus ? "white" : "light gray"
                            TextInput {
                                id: zValue1
                                focus: true
                                activeFocusOnTab: true
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                    }


                }


                ColumnLayout{
                    width:popRow2.width/2
                    id:col2
                    spacing:30
                    Row {
                        spacing: 10
                        width: col2.width
                        height: 50

                        Text {
                            id: aVal1
                            text: qsTr("A:")
                            width: 70
                            height:20
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                        }
                        Rectangle {
                            width: parent.width/2
                            radius: 5
                            height: 20
                            color: aValue1.focus ? "white" : "light gray"
                            TextInput {
                                id: aValue1
                                focus: true
                                activeFocusOnTab: true
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                    }
                    Row {
                        spacing: 10
                        width: col2.width
                        height: 50

                        Text {
                            id: bVal1
                            text: qsTr("B:")
                            width: 70
                            height:20
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                        }
                        Rectangle {
                            width: parent.width/2
                            radius: 5
                            height: 20
                            color: bValue1.focus ? "white" : "light gray"
                            TextInput {
                                id: bValue1
                                focus: true
                                activeFocusOnTab: true
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                    }
                    Row {
                        spacing: 10
                        width: col2.width
                        height: 50

                        Text {
                            id: cVal1
                            text: qsTr("C:")
                            width: 70
                            height:20
                            horizontalAlignment: Text.AlignRight
                            verticalAlignment: Text.AlignVCenter
                        }
                        Rectangle {
                            width: parent.width/2
                            radius: 5
                            height: 20
                            color: cValue1.focus ? "white" : "light gray"
                            TextInput {
                                id: cValue1
                                focus: true
                                activeFocusOnTab: true
                                anchors.fill: parent
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                    }



                }


            }


            Row {
                spacing: 10
                width: parent.width
                height: 50
                Layout.alignment: Qt.AlignCenter
                Text {
                    id: mname
                    text: qsTr("Marker Name:")
                    width: 70
                    height:20
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                }
                Rectangle {
                    width: 70
                    radius: 5
                    height: 20
                    color: markerName.focus ? "white" : "light gray"
                    TextInput {
                        id: markerName
                        focus: true
                        activeFocusOnTab: true
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

        }

        Button {
            text: "Close"
            onClicked: popUp.close()
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 10
        }

    }

    Rectangle{
        id:leftrect
        width:mainrect.width*0.35
        height:mainrect.height*0.80
        anchors.left:mainrect.left
        anchors.leftMargin: 10
        anchors.top:mainrect.top
        anchors.topMargin: 10
        color:"#C1D5F0"
        radius:5
        border.color:"#A8B5E0"

        Rectangle{
            id:buttonx
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: leftrect.left
            anchors.leftMargin: 10
            anchors.top: leftrect.top
            anchors.topMargin: (mainrect.height+mainrect.width)/55
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonx
                font.pointSize: (leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"X+"
            }
        }

        Label{
            id:mm
            text: "MM"
            color:"#AA336A"
            font.pointSize: (leftrect.height*0.13+leftrect.width*0.20)/10
            anchors.bottom: xtext.top
            anchors.bottomMargin: 1
            anchors.left:leftrect.left
            anchors.leftMargin:(mainrect.height+mainrect.width)/9
            //anchors.rightMargin:(mainrect.height+mainrect.width)/40
            anchors.right: leftrect.right
        }
        Rectangle{
            id:xtext
            height:leftrect.height*0.13
            width:leftrect.width*0.05
            anchors.left: buttonx.right
            anchors.leftMargin:10
            anchors.rightMargin:10
            anchors.right: buttonx2.left
            anchors.top:leftrect.top
            anchors.topMargin:(mainrect.height+mainrect.width)/55
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/9
                font.bold: true
                text:"1"
                color:"white"
                anchors.horizontalCenter: xtext.horizontalCenter
                anchors.verticalCenter: xtext.verticalCenter
            }
        }
        Rectangle{
            id:buttonx2
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.right: leftrect.right
            anchors.rightMargin: 10
            anchors.top: leftrect.top
            anchors.topMargin: (mainrect.height+mainrect.width)/55
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonx2
                font.pointSize: (leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                text:"X-"
                font.bold: true
            }
        }
        Rectangle{
            id:buttony
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: leftrect.left
            anchors.leftMargin: 10
            anchors.top: buttonx.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttony
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"Y+"
            }
        }
        Rectangle{
            id:ytext
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: buttony.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttony2.left
            anchors.top:xtext.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/9
                font.bold: true
                text:"2"
                color:"white"
                anchors.horizontalCenter: ytext.horizontalCenter
                anchors.verticalCenter: ytext.verticalCenter
            }

        }
        Rectangle{
            id:buttony2
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.right: leftrect.right
            anchors.rightMargin: 10
            anchors.top: buttonx2.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttony2
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                text:"Y-"
                font.bold: true
            }
        }
        Rectangle{
            id:buttonz
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: leftrect.left
            anchors.leftMargin: 10
            anchors.top: buttony.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonz
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"Z+"
            }
        }
        Rectangle{
            id:ztext
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: buttonz.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonz2.left
            anchors.top:ytext.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/9
                font.bold: true
                text:"3"
                color:"white"
                anchors.horizontalCenter: ztext.horizontalCenter
                anchors.verticalCenter: ztext.verticalCenter
            }

        }
        Rectangle{
            id:buttonz2
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.right: leftrect.right
            anchors.rightMargin: 10
            anchors.top: buttony2.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonz2
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                text:"Z-"
                font.bold: true
            }
        }
        Rectangle{
            id:buttonA
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: leftrect.left
            anchors.leftMargin: 10
            anchors.top: buttonz.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonA
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"A+"
            }
        }
        Rectangle{
            id:atext
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: buttonA.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonA2.left
            anchors.top:ztext.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/9
                font.bold: true
                text:"4"
                color:"white"
                anchors.horizontalCenter: atext.horizontalCenter
                anchors.verticalCenter: atext.verticalCenter
            }

        }
        Rectangle{
            id:buttonA2
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.right: leftrect.right
            anchors.rightMargin: 10
            anchors.top: buttonz2.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonA2
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                text:"A-"
                font.bold: true
            }
        }
        Rectangle{
            id:buttonB
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: leftrect.left
            anchors.leftMargin: 10
            anchors.top: buttonA.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonB
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"B+"
            }
        }
        Rectangle{
            id:btext
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: buttonB.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonB2.left
            anchors.top:atext.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/9
                font.bold: true
                text:"5"
                color:"white"
                anchors.horizontalCenter: btext.horizontalCenter
                anchors.verticalCenter: btext.verticalCenter
            }

        }
        Rectangle{
            id:buttonB2
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.right: leftrect.right
            anchors.rightMargin: 10
            anchors.top: buttonA2.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonB2
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                text:"B-"
                font.bold: true
            }
        }
        Rectangle{
            id:buttonC
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: leftrect.left
            anchors.leftMargin: 10
            anchors.top: buttonB.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonC
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"C+"
            }
        }
        Rectangle{
            id:ctext
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.left: buttonC.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonC2.left
            anchors.top:btext.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/9
                font.bold: true
                text:"6"
                color:"white"
                anchors.horizontalCenter: ctext.horizontalCenter
                anchors.verticalCenter: ctext.verticalCenter
            }

        }
        Rectangle{
            id:buttonC2
            height:leftrect.height*0.13
            width:leftrect.width*0.20
            anchors.right: leftrect.right
            anchors.rightMargin: 10
            anchors.top: buttonB2.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonC2
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                text:"C-"
                font.bold: true
            }
        }

    }

    Rectangle{
        id:slider
        height:mainrect.height*0.64
        width:mainrect.width*0.09
        anchors.left: leftrect.right
        anchors.leftMargin: 5
        anchors.top:mainrect.top
        anchors.topMargin: 10
        color:"#C1D5F0"
        radius:5
        border.color:"#A8B5E0"
        Slider{
            id:control
            from:-360
            to:360
            value: 0
            orientation: Qt.Vertical
            stepSize: 1
            width:slider.wdith*0.10
            height:slider.height*0.94

            Label {
                    id: sliderlabel
                    text: "InputSpeed"
                    anchors.bottom:control.handle.top
                    font.pointSize: 5
                    //anchors.top: home.top
                    visible: MouseArea.containsMouse
                    font.bold: true
                }

            onValueChanged: {
                console.log((value))
            }
        }
    }
    Rectangle{
        id:homerect
        height:mainrect.height*0.15
        width:mainrect.width*0.40
        color:"light gray"
        anchors.left:slider.right
        anchors.right:rightrect.left
        anchors.top: mainrect.top
        anchors.leftMargin:(mainrect.height+mainrect.width)/79
        anchors.rightMargin: (mainrect.height+mainrect.width)/46
        anchors.topMargin: 5
    Image {
        id:home
        source:'file:///C:/Qt/threescreen/Images/Home.png'
        height:mainrect.height*0.15
        width:mainrect.width*0.10
        anchors.centerIn: parent
       // anchors.left:slider.right
       // anchors.right:rightrect.left
       //// anchors.top: mainrect.top
        //anchors.leftMargin:(mainrect.height+mainrect.width)/79
       // anchors.rightMargin: (mainrect.height+mainrect.width)/46
       // anchors.topMargin: 5
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.info("Home clicked!")
            }
        }
    }
    }
    Rectangle{
        id:startrect
        height:mainrect.height*0.15
        width:mainrect.width*0.40
        color:"light gray"
        anchors.left:slider.right
        anchors.right:rightrect.left
        anchors.top: homerect.bottom
        anchors.leftMargin:(mainrect.height+mainrect.width)/79
        anchors.rightMargin: (mainrect.height+mainrect.width)/46
        anchors.topMargin: 5
    Image {
        property int flag: 1
        id:startstop
        source:'file:///C:/Qt/threescreen/Images/on.png'
        height:mainrect.height*0.15
        width:mainrect.width*0.10
        anchors.centerIn: parent
//        height:mainrect.height*0.15
//        width:mainrect.width*0.40
//        anchors.left:slider.right
//        anchors.right:rightrect.left
//        anchors.top: home.bottom
//        anchors.leftMargin:(mainrect.height+mainrect.width)/79
//        anchors.rightMargin: (mainrect.height+mainrect.width)/46
//        anchors.topMargin: 5
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.info("Start Stop clicked!")

                if(startstop.source == 'file:///C:/Qt/threescreen/Images/on.png'){
                    startstop.source='file:///C:/Qt/threescreen/Images/off.png';
                    flag=0;
                }
                else{
                    startstop.source='file:///C:/Qt/threescreen/Images/on.png';
                    flag=1;
                }
            }
        }
    }
}
    Rectangle{
        id:runrect
        height:mainrect.height*0.15
        width:mainrect.width*0.40
        color:"light gray"
        anchors.left:slider.right
        anchors.right:rightrect.left
        anchors.top: startrect.bottom
        anchors.leftMargin:(mainrect.height+mainrect.width)/79
        anchors.rightMargin: (mainrect.height+mainrect.width)/46
        anchors.topMargin: 5
        Image {
        id:runpause
        source:'file:///C:/Qt/threescreen/Images/run.png'
        height:mainrect.height*0.15
        width:mainrect.width*0.10
        anchors.centerIn: parent
//        height:mainrect.height*0.15
//        width:mainrect.width*0.40
//        anchors.left:slider.right
//        anchors.right:rightrect.left
//        anchors.top: startstop.bottom
//        anchors.leftMargin:(mainrect.height+mainrect.width)/79
//        anchors.rightMargin: (mainrect.height+mainrect.width)/46
//        anchors.topMargin: 5
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.info("Run Pause clicked!")
                if(flag1==1){
                    runpause.source='file:///C:/Qt/threescreen/Images/pause.png';
                    flag1=0;
                }
                else {
                    runpause.source='file:///C:/Qt/threescreen/Images/run.png';
                    flag1=1;
                }

            }

        }
    }
}
    Rectangle{
        id:exitrect
        height:mainrect.height*0.15
        width:mainrect.width*0.40
        color:"light gray"
        anchors.left:slider.right
        anchors.right:rightrect.left
        anchors.top: runrect.bottom
        anchors.leftMargin:(mainrect.height+mainrect.width)/79
        anchors.rightMargin: (mainrect.height+mainrect.width)/46
        anchors.topMargin: 5
    Image {
        id:exit
        source:'file:///C:/Qt/threescreen/Images/exit.png'
        height:mainrect.height*0.15
        width:mainrect.width*0.10
        anchors.centerIn: parent
//        height:mainrect.height*0.15
//        width:mainrect.width*0.40
//        anchors.left:slider.right
//        anchors.right:rightrect.left
//        anchors.top: runpause.bottom
//        anchors.leftMargin:(mainrect.height+mainrect.width)/79
//        anchors.rightMargin: (mainrect.height+mainrect.width)/46
//        anchors.topMargin: 5
        MouseArea {
            hoverEnabled: true
            anchors.fill: parent
            onClicked: {
                console.info("Exit clicked!")
            }
        }
    }
}
    Rectangle{
        id:resetrect
        height:mainrect.height*0.15
        width:mainrect.width*0.40
        color:"light gray"
        anchors.left:slider.right
        anchors.right:rightrect.left
        anchors.top: exitrect.bottom
        anchors.leftMargin:(mainrect.height+mainrect.width)/79
        anchors.rightMargin: (mainrect.height+mainrect.width)/46
        anchors.topMargin: 5

    Image {
        id:reset
        source:'file:///C:/Qt/threescreen/Images/clear.png'
        height:mainrect.height*0.15
        width:mainrect.width*0.10
        anchors.centerIn: parent
//        height:mainrect.height*0.15
//        width:mainrect.width*0.20
//        anchors.left:slider.right
//        anchors.right:rightrect.left
//        anchors.topMargin: 5
//        anchors.top: exit.bottom
//        anchors.leftMargin:(mainrect.height+mainrect.width)/79
//        anchors.rightMargin: (mainrect.height+mainrect.width)/46
        Label {
                id: resetlabel
                text:"Reset"
                anchors.right:reset.left
                anchors.top: reset.top
                visible: resetmouse.containsMouse
                font.bold: true
            }
        MouseArea {
            id:resetmouse
            hoverEnabled: true
            anchors.fill: parent
            onClicked: {
                console.info("Reset clicked!")
                reset.source='file:///C:/Qt/threescreen/Images/clear.png'
            }
            onDoubleClicked:
            {
                reset.source='file:///C:/Qt/threescreen/Images/orange.png'
            }
        }
    }
}
    Switch {
        id: switches
        anchors.top: slider.bottom
        anchors.topMargin: 10
        anchors.left: leftrect.right
        anchors.leftMargin: 5
        indicator: Rectangle {
            implicitWidth: mainrect.width*0.09
            implicitHeight: mainrect.height*0.09
            radius:5
            color: switches.checked ? "#C1D5F0" : "#A8B5E0"
            border.color:"dark gray"
            Text {
                id: switchestext
                text: switches.checked ?"Real":"Sim";
                color: switches.checked ?"Real":"Sim";
                anchors.centerIn: parent
                font.pointSize:(leftrect.height*0.13+leftrect.width*0.20)/9
                font.bold:true
            }
            Rectangle {
                x: switches.checked ? parent.width - width : 0
                width: mainrect.width*0.015
                height: mainrect.height*0.09
                radius:5
                color: "white"
                border.color: switches.checked ? "Dark Gray": "#999999"
            }
        }
    }

    Rectangle{
        id:rightrect
        width:mainrect.width*0.35
        height:mainrect.height*0.80
        anchors.right:mainrect.right
        anchors.rightMargin: 10
        anchors.top:mainrect.top
        anchors.topMargin: (mainrect.height+mainrect.width)/55
        color:"#C1D5F0"
        radius:5
        border.color:"#A8B5E0"

        Rectangle{
            id:buttonJ1
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: rightrect.left
            anchors.leftMargin: 10
            anchors.top: rightrect.top
            anchors.topMargin: (mainrect.height+mainrect.width)/55
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ1
                font.pointSize: (leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J1+"
            }
        }
        Rectangle{
            id:j1text
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: buttonJ1.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonJ11.left
            anchors.top:rightrect.top
            anchors.topMargin: (mainrect.height+mainrect.width)/55
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/9
                font.bold: true
                text:"1"
                color:"white"
                anchors.horizontalCenter: j1text.horizontalCenter
                anchors.verticalCenter: j1text.verticalCenter
            }

        }
        Label{
            id:degree
            text: "Degree"
            color:"#AA336A"
            font.pointSize: (leftrect.height*0.13+leftrect.width*0.20)/10
            anchors.bottom: j1text.top
            anchors.bottomMargin: 1
            anchors.left:rightrect.left
            anchors.leftMargin:(mainrect.height+mainrect.width)/11
            //anchors.rightMargin:(mainrect.height+mainrect.width)/40
            anchors.right: rightrect.right
        }
        Rectangle{
            id:buttonJ11
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.right: rightrect.right
            anchors.rightMargin: 10
            anchors.top: rightrect.top
            anchors.topMargin:(mainrect.height+mainrect.width)/55
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ11
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J1-"
            }
        }
        Rectangle{
            id:buttonJ2
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: rightrect.left
            anchors.leftMargin: 10
            anchors.top: buttonJ1.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ2
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J2+"
            }
        }
        Rectangle{
            id:j2text
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: buttonJ2.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonJ22.left
            anchors.top:j1text.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/9
                font.bold: true
                text:"2"
                color:"white"
                anchors.horizontalCenter: j2text.horizontalCenter
                anchors.verticalCenter: j2text.verticalCenter
            }

        }

        Rectangle{
            id:buttonJ22
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.right: rightrect.right
            anchors.rightMargin: 10
            anchors.top: buttonJ11.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ22
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J2-"
            }
        }
        Rectangle{
            id:buttonJ3
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: rightrect.left
            anchors.leftMargin: 10
            anchors.top: buttonJ2.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ3
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J3+"
            }
        }

        Rectangle{
            id:j3text
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: buttonJ3.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonJ33.left
            anchors.top:j2text.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/9
                font.bold: true
                text:"3"
                color:"white"
                anchors.horizontalCenter: j3text.horizontalCenter
                anchors.verticalCenter: j3text.verticalCenter
            }

        }



        Rectangle{
            id:buttonJ33
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.right: rightrect.right
            anchors.rightMargin: 10
            anchors.top: buttonJ22.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ33
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J3-"
            }
        }
        Rectangle{
            id:buttonJ4
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: rightrect.left
            anchors.leftMargin: 10
            anchors.top: buttonJ3.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ4
                font.pointSize: (rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J4+"
            }
        }
        Rectangle{
            id:j4text
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: buttonJ4.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonJ44.left
            anchors.top:j3text.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/9
                font.bold: true
                text:"4"
                color:"white"
                anchors.horizontalCenter: j4text.horizontalCenter
                anchors.verticalCenter: j4text.verticalCenter
            }

        }
        Rectangle{
            id:buttonJ44
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.right: rightrect.right
            anchors.rightMargin: 10
            anchors.top: buttonJ33.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ44
                font.pointSize: (rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J4-"
            }
        }
        Rectangle{
            id:j5text
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: buttonJ4.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonJ55.left
            anchors.top:j4text.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/9
                font.bold: true
                text:"5"
                color:"white"
                anchors.horizontalCenter: j5text.horizontalCenter
                anchors.verticalCenter: j5text.verticalCenter
            }

        }
        Rectangle{
            id:buttonJ5
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: rightrect.left
            anchors.leftMargin: 10
            anchors.top: buttonJ4.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ5
                font.pointSize: (rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J5+"
            }
        }
        Rectangle{
            id:j6text
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: buttonJ6.right
            anchors.leftMargin: 10
            anchors.rightMargin: 10
            anchors.right: buttonJ66.left
            anchors.top:j5text.bottom
            anchors.topMargin: 5
            color:"#A8B5E0"
            radius:5
            Text {
                font.pointSize:(rightrect.height*0.13+rightrect.width*0.20)/9
                font.bold: true
                text:"6"
                color:"white"
                anchors.horizontalCenter: j6text.horizontalCenter
                anchors.verticalCenter: j6text.verticalCenter
            }

        }
        Rectangle{
            id:buttonJ55
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.right: rightrect.right
            anchors.rightMargin: 10
            anchors.top: buttonJ44.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ55
                font.pointSize: (rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J5-"
            }
        }
        Rectangle{
            id:buttonJ6
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.left: rightrect.left
            anchors.leftMargin: 10
            anchors.top: buttonJ5.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ6
                font.pointSize: (leftrect.height*0.13+leftrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J6+"
            }
        }
        Rectangle{
            id:buttonJ66
            height:rightrect.height*0.13
            width:rightrect.width*0.20
            anchors.right: rightrect.right
            anchors.rightMargin: 10
            anchors.top: buttonJ55.bottom
            anchors.topMargin: 5
            radius:4
            color: "blue"
            Text{
                anchors.centerIn: buttonJ66
                font.pointSize: (rightrect.height*0.13+rightrect.width*0.20)/8
                color: "white"
                font.bold: true
                text:"J6-"
            }
        }



    }
    Rectangle{
        id:comborect
        anchors.bottom:mainrect.bottom
        anchors.bottomMargin: 5
        color:"#C1D5F0"
        height:mainrect.height*0.12
        width:mainrect.width*0.96
        anchors.left: mainrect.left
        anchors.leftMargin: 10
        anchors.right:mainrect.right
        anchors.rightMargin: 10
        radius:5
        border.color:"#A8B5E0"

        ComboBox {
            id: tool
            model: ["Tool","Tool 1", "Tool 2", "Tool 3"]
            font.pointSize:(comborect.width*0.20+comborect.width*0.05)/18
            width: comborect.width*0.17
            height:comborect.width*0.05
            anchors.left: comborect.left
            anchors.leftMargin: 5
            anchors.top: comborect.top
            anchors.topMargin: 5
            anchors.bottom: comborect.bottom
            anchors.bottomMargin: 5

        }
        ComboBox {
            id: object
            model: ["Object", "Object 1", "Object 2"]
            font.pointSize:(comborect.width*0.20+comborect.width*0.05)/18
            width: comborect.width*0.20
            height:comborect.width*0.05
            anchors.left: tool.right
            anchors.leftMargin: 5
            anchors.top: comborect.top
            anchors.topMargin: 5
            anchors.bottom: comborect.bottom
            anchors.bottomMargin: 5

        }
        ComboBox {
            id: markerBox
            model: markerModel.items()
            font.pointSize:(comborect.width*0.20+comborect.width*0.05)/18
            width: comborect.width*0.19
            height:comborect.width*0.05
            anchors.left: object.right
            anchors.leftMargin: 5
            anchors.top: comborect.top
            anchors.topMargin: 5
            anchors.bottom: comborect.bottom
            anchors.bottomMargin: 5
            onActivated: {
                if (markerBox.currentText == "Add Marker"){
                    popUp.open();
                }
                else{
                    // var popup = Qt.createQmlObject("import QtQuick.Window 2.12; Window { width: 200; height: 100; visible: true; Rectangle{anchors.fill:parent ; color:'green'}}", cell2)
                    // popup.x =markerBox.x + markerBox.width - width
                    //  popup.y =markerBox.y + markerBox.height
                }
            }
            onCurrentTextChanged: {
                var item = markerBox.currentText
                markerModel.selectItem(item)
            }
        }
        ComboBox {
            id: frame
            model: ["Frame", "Frame 1", "Frame 2"]
            font.pointSize:(comborect.width*0.20+comborect.width*0.05)/18
            width: comborect.width*0.18
            height:comborect.width*0.05
            anchors.left: markerBox.right
            anchors.leftMargin: 5
            anchors.top: comborect.top
            anchors.topMargin: 5
            anchors.bottom: comborect.bottom
            anchors.bottomMargin: 5
        }
        ComboBox {
            id: inputspeed
            model: ["Object", "Object 1", "Object 2"]
            font.pointSize:(comborect.width*0.20+comborect.width*0.05)/18
            width: comborect.width*0.20
            height:comborect.width*0.05
            anchors.left: frame.right
            anchors.leftMargin: 5
            anchors.right: comborect.right
            anchors.rightMargin: 5
            anchors.top: comborect.top
            anchors.topMargin: 5
            anchors.bottom: comborect.bottom
            anchors.bottomMargin: 5

        }
    }
}
