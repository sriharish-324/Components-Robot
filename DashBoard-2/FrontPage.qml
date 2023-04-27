import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.1
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0


Window {
    id: window
    width: 926
    minimumWidth: 450
    height: 564
    minimumHeight: 250
    visible: true
    title: qsTr("BIT HMI")
    signal thirdsignal(int x)
    property string name: "0"
    Rectangle {
        id:root
        anchors.fill: parent
        color: "lightblue"
        GridLayout {
            id: grid
            columns: 2
            columnSpacing: 10
            rowSpacing: 10
            anchors.fill: parent
            anchors.margins: 10
            anchors.top: root.top
            anchors.topMargin: 5
            L_T{

            }
            R_T{
                id:rt
                onSecondsignalforx: {
                    rb.x_value=xvalue
                }
                onSecondsignalfory: {
                    rb.y_value=yvalue
                }
                onSecondsignalforz: {
                    rb.z_value=zvalue
                }

            }
            L_B{

            }
            R_B{
                id:rb
            }
        }
    }
}

