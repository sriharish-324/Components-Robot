import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

Rectangle{
    Layout.fillWidth: true
    Layout.fillHeight: true
    color: "Light grey"
    border.color: "grey"
    border.width: 2
    radius: 10
    RowLayout{
        anchors.fill: parent
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        ColumnLayout{
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            spacing: 10
            Text{
                text: "Left_Bottom"
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
            Text{
                text: "Left_Bottom"
            }
        }
    }
}
