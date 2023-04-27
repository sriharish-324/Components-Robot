import QtQuick 2.0
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

Rectangle{
    id:mainrect
    x:10
    y:40
    Rectangle{
        id: addpoint
        width: 85
        height: 30
        color: "green"
        radius: 8
        anchors.top: parent.top
        anchors.topMargin: 8
        Text {
            id: addpointtext
            text: "AddPoint"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: addpoint
            onClicked: {
                console.log("ADD POINT")
            }
            onPressed: {
                addpoint.color="black"
            }
            onReleased: {
                addpoint.color="green"
            }
        }
    }//ADDPOINT

    Rectangle{
        id: ip
        width: 85
        height: 30
        color: "green"
        radius: 8
        anchors.top: addpoint.bottom
        anchors.topMargin: 8
        Text {
            id: insertiptext
            text: "Insert_IP"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: ip
            onClicked: {
                console.log("INSERT_TP")
            }onPressed: {
                ip.color="black"
            }
            onReleased: {
                ip.color="green"
            }
        }
    }//INSERT_TP

    Rectangle{
        id: tpselect
        width: 85
        height: 30
        color: "green"
        radius: 8
        anchors.top: ip.bottom
        anchors.topMargin: 8
        Text {
            id: tpselecttext
            text: "Select_TP"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: tpselect
            onClicked: {
                console.log("SELECT_TP")
            }
            onPressed: {
                tpselect.color="black"
            }
            onReleased: {
                tpselect.color="green"
            }
        }
    }//TP_SELECT

    Rectangle{
        id: open
        width: 85
        height: 30
        color: "green"
        radius: 8
        anchors.top:tpselect.bottom
        anchors.topMargin: 8
        Text {
            id: opentext
            text: "Open"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: open
            onClicked: {
                console.log("OPEN")
            }
            onPressed: {
                open.color="black"
            }
            onReleased: {
                open.color="green"
            }
        }
    }//OPEN

    Image {
        id:clearbutton
        anchors.top: open.bottom
        anchors.topMargin: 40
        anchors.left:runbutton.right
        anchors.leftMargin:5
        source:'file:///C:/Qt/task1_2 updated/Images/clean.png'
        height:30
        width:30
        Label{
            id:tex
            text:"clear"
            anchors.bottom: clearbutton.top
            anchors.bottomMargin: 5
            visible:mousearea.containsMouse
        }
        MouseArea {
            id:mousearea
            anchors.fill: clearbutton
        }
    }
    R_B_Prog_InstructionCombo{
        id:combo
        anchors.top: clearbutton.top
        anchors.topMargin: 0
        anchors.left:runbutton.right
        anchors.leftMargin: 50
    }
    R_B_Prog_DigitalCombo{
        id:combo1
        anchors.top: combo.top
        anchors.topMargin: 0
        anchors.left:combo.right
        anchors.leftMargin: 5
    }
    R_B_Prog_ProfileCombo{
        id:combo2
        anchors.top: combo1.top
        anchors.topMargin: 0
        anchors.left:combo1.right
        anchors.leftMargin: 5
    }
    Image {
        id:runbutton
        anchors.top: open.bottom
        anchors.topMargin: 40
        source:'file:///C:/Qt/task1_2 updated/Images/runbutton.png'
        height:30
        width:30
        Label{
            id:runtex
            text:"Run"
            anchors.bottom: runbutton.top
            anchors.bottomMargin: 5
            visible:runmouse.containsMouse
        }
        MouseArea {
            id:runmouse
            anchors.fill: runbutton
        }
    }
    Rectangle{
        id: trjectoryfile
        width: 85
        height: 30
        color: "green"
        radius: 8
        anchors.left: addpoint.right
        anchors.leftMargin: 258
        anchors.top: parent.top
        anchors.topMargin: 8
        Text {
            id: trjectoryfiletext
            text: "TrjectoryFile"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: trjectoryfile
            onClicked: {
                console.log("TRJECTORY FILE")
            }onPressed: {
                trjectoryfile.color="black"
            }
            onReleased: {
                trjectoryfile.color="green"
            }
        }
    }//TRJECTORY FILE

    Rectangle{
        id: insprogram
        width: 85
        height: 30
        color: "green"
        radius: 8
        anchors.top: trjectoryfile.bottom
        anchors.left: ip.right
        anchors.leftMargin: 258
        anchors.topMargin: 8
        Text {
            id: insprogramtext
            text: "InsProgram"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: insprogram
            onClicked: {
                console.log("INS_PROGRAM")
            }onPressed: {
                insprogram.color="black"
            }
            onReleased: {
                insprogram.color="green"
            }
        }
    }
    Rectangle{
        id: delprogram
        width: 85
        height: 30
        color: "green"
        radius: 8
        anchors.top: insprogram.bottom
        anchors.left: tpselect.right
        anchors.leftMargin: 258
        anchors.topMargin: 8
        Text {
            id: delprogramtext
            text: "DelProgram"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: delprogram
            onClicked: {
                console.log("DEL_PROGRAM")
            }
            onPressed: {
                delprogram.color="black"
            }
            onReleased: {
                delprogram.color="green"
            }
        }
    }
    Rectangle{
        id: deletetp
        width: 85
        height: 30
        color: "green"
        radius: 10
        anchors.top: delprogram.bottom
        anchors.left: open.right
        anchors.leftMargin: 258
        anchors.topMargin: 8
        Text {
            id: deletetptext
            text: "Delete TP"
            font.pointSize: 8
            font.bold: true
            color: "white"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: deletetp
            onClicked: {
                console.log("DELETE TP")
            }
            onPressed: {
                deletetp.color="black"
            }
            onReleased: {
                deletetp.color="green"
            }
        }
    }
    Image {
        id:save
        anchors.top: deletetp.bottom
        anchors.topMargin: 40
        anchors.left: runbutton.right
        anchors.leftMargin: 350
        source:'file:///C:/Qt/task1_2 updated/Images/save.png'
        height:30
        width:30
        Label{
            id:savetex
            text:"Save"
            anchors.bottom: save.top
            anchors.bottomMargin: 5
            visible:savemouse.containsMouse
        }
        MouseArea {
            id:savemouse
            anchors.fill: save
        }
    }
    //RADIUS-VALUE-Button
    R_B_Prog_RadiusButton{
        id: radius
        anchors.left:addpoint.right
        anchors.leftMargin: 25
        anchors.top:parent.top
        anchors.topMargin: 8
        Text {
            id: radiustext
            text: qsTr("Radius")
            anchors.bottom:radius.bottom
            anchors.bottomMargin: 10
            font.bold:true
            font.pointSize: 7
        }
    }
    // SPEED-VALUE-Button
    R_B_Prog_SpeedButton{
        id: speedvalue
        anchors.right:trjectoryfile.left
        anchors.rightMargin: 50
        anchors.top:parent.top
        anchors.topMargin: 8
        Text {
            id: speedvaluetext
            text: qsTr("Speed (mm)")
            anchors.bottom:speedvalue.bottom
            anchors.bottomMargin: 10
            font.bold:true
            font.pointSize: 7
        }
    }
    //DELAY MS BUTTON
    R_B_Prog_SpeedButton1{
        id: delayvaluebutton
        anchors.left:ip.right
        anchors.leftMargin: 25
        anchors.top: radius.bottom
        anchors.topMargin: 30
        Text {
            id: delayvaluebuttontext
            text: qsTr("Delay Ms")
            font.bold:true
            anchors.bottom:delayvaluebutton.bottom
            anchors.bottomMargin: 10
            font.pointSize: 7
        }
    }
    //ADC VALUE Button
    R_B_Prog_Adc{
        id: adcvaluebutton
        anchors.right:delprogram.left
        anchors.rightMargin: 50
        anchors.top: trjectoryfile.bottom
        anchors.topMargin: 30
        Text {
            id: adcvaluebuttontext
            text: qsTr("ADC")
            font.bold:true
            anchors.bottom:adcvaluebutton.bottom
            anchors.bottomMargin: 10
            font.pointSize: 7
        }
    }
}
