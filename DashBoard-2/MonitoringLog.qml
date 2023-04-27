import QtQuick 2.2
import QtQuick.Window 2.1
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.0
import QtQuick.Dialogs 1.0
Rectangle{
    Button {
        id:addtotable
        anchors.left: parent.left
        anchors.leftMargin: 10
        text: "Refresh"
        x:100
        y:40
        onClicked: {
            tV.append({title: x_value,
                          author: y_value,
                          year: z_value,});
        }
    }
    TableView {
        id:tablerect
        anchors.top: addtotable.bottom
        anchors.topMargin: 5
        x:10
        y:40
        width: 400
        height: 190
        TableViewColumn{ role: "title"  ; title: "X" ; width: 125 ;resizable: true ; movable: true }
        TableViewColumn{ role: "author" ; title: "Y" ; width: 125 ;resizable: true ; movable: true }
        TableViewColumn{ role: "year" ; title: "Z" ; width: 125 ;resizable: true ; movable: true }
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
}
