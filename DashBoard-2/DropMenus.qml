import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
Rectangle{
    Menu {
        id: menu
        MenuItem {
            text: "Real"
        }
        MenuItem {
            text: "Simulation"
        }
        MenuItem {
            text: "Real/Simulation"
        }
    }
    Image {
        id:menuicon
        source:'file:///C:/Qt/task1_2 updated/Images/dropdown.png'
        height:20
        width:20
        MouseArea{
            width:menuicon.width
            height:menuicon.height
            onClicked: {
                menu.popup()
            }
        }
    }

}
