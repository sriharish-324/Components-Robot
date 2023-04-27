import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0


Rectangle {
    id:outer_rect
    Layout.fillWidth: true
    Layout.fillHeight: true
    ResetButtonx{
        anchors.top: outer_rect.top
        anchors.topMargin: 10
        width: outer_rect.width *0.20
        height: outer_rect.height *0.70
    }
    ResetButtony{
        id:resetY
        anchors.top: outer_rect.top
        anchors.topMargin: 10
        anchors.left: outer_rect.right
        anchors.leftMargin: 140
        width: outer_rect.width *0.20
        height: outer_rect.height *0.70
    }
    ResetButtonz{
        anchors.top: outer_rect.top
        anchors.topMargin: 10
        anchors.left: resetY.right
        anchors.leftMargin: 140
        width: outer_rect.width *0.20
        height: outer_rect.height *0.70
    }
}
