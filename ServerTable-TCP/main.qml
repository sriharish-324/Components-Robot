import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.3
import socket 1.0
import QtQuick.Controls 1.3
Window {
    id:mainwindow
    width: 926
    height: 564
    visible: true
    title: qsTr("Table Log")
    Rectangle{
        id:bluerect
        color: "lightblue"
        width:mainwindow.width
        height:mainwindow.height

        //        ToolBar {
        //            id: toolbar
        //            width: mainwindow.width
        //            height: mainwindow.height
        //            CheckBox {
        //                id: enabledCheck
        //                text: "Enabled"
        //                checked: true
        //                anchors.right: parent.right
        //                y: 80
        //            }
        //        }
        ListModel {
            id: libraryModel
        }
        TableView {
            id:table
            anchors.top:bluerect.top
            anchors.topMargin:50
            anchors.left: bluerect.left
            anchors.leftMargin: 30
            width: mainwindow.width*0.75
            height: mainwindow.height-100
            TableViewColumn{ role: "x"  ; title: "X" ; width: mainwindow.width*0.15 ;resizable: true ; movable: true ;}
            TableViewColumn{ role: "y" ; title: "Y" ; width:  mainwindow.width*0.15 ;resizable: true ; movable: true }
            TableViewColumn{ role: "z" ; title: "Z" ; width:  mainwindow.width*0.15 ;resizable: true ; movable: true }
            TableViewColumn{ role: "input" ; title: "Input Speed" ; width:  mainwindow.width*0.15 ; resizable: true ; movable: true  }
            TableViewColumn{ role: "output" ; title: "Output Speed" ; width:  mainwindow.width*0.15 ; resizable: true ; movable: true  }
            model: ListModel{
                id: tV
            }
            alternatingRowColors: true
            backgroundVisible: true
            headerVisible: true
            itemDelegate: Item {
                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    elide: styleData.elideMode
                    text: styleData.value
                } // text
            } // Item
        }// TableView

        Rectangle{
            id:home
            width:60
            height:40
            color:"dark blue"
            radius:3
            anchors.left: table.right
            anchors.leftMargin: 60
            anchors.top:bluerect.top
            anchors.topMargin: 50
            Text{
                id:tex
                text:"Refresh"
                font.bold: true
                anchors.centerIn:home
                color:"white"
            }
            MouseArea{
                anchors.fill:home
                onClicked: {
                    tV.append({x: socket.recvdText,
                                  y: socket.recvdyText,
                                  z: socket.recvdzText,
                                  input: 0,
                                  output:0});
                }
                onPressed: {
                    home.color="black"
                    tex.color="white"
                }
                onReleased: {
                    home.color="dark blue"
                    tex.color="white"
                }
            }
        }
        Rectangle{
            id:clearButton
            width:60
            height:40
            color:"dark blue"
            radius:3
            anchors.left: table.right
            anchors.leftMargin: 60
            anchors.top:bluerect.top
            anchors.topMargin: 120 // make sure this is below the "Refresh" button
            Text{
                id:clearButtonText
                text:"Clear"
                font.bold: true
                anchors.centerIn:clearButton
                color:"white"
            }
            MouseArea{
                anchors.fill:clearButton
                onClicked: {
                    tV.clear();
                }
                onPressed: {
                    clearButton.color="black"
                    clearButtonText.color="white"
                }
                onReleased: {
                    clearButton.color="dark blue"
                    clearButtonText.color="white"
                }
            }
        }
    }

}


