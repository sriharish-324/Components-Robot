import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0

Rectangle{
    id:r1
    property int count:0
    property int sliderwidth: 100
    property int sliderheight:50
    property int handleheigh: 40
    signal zsliderChanged(int zval)
    implicitWidth: sliderwidth
    implicitHeight:sliderheight
    width:247
    height:60
    border.color: "black"
    color:"white"
    Text {
        id: l1
        anchors.top: s1.top
        anchors.topMargin: 3
        anchors.left: s1.left
        anchors.leftMargin: 10
        text:"-360"
        font.pointSize: 10
    }
    Text {
        id: l2
        anchors.top: s1.top
        anchors.topMargin: 3
        anchors.right:s1.right
        anchors.rightMargin: 10
        text: qsTr("+360")
        font.pointSize: 10
    }
    Slider{
        id:s1
        from:-360
        to:360
        value: 0
        stepSize: 1
        width: r1.width
        height: r1.height
        anchors.horizontalCenter: parent.horizontalCenter
        handle: Rectangle{
            width: 45
            height: 30
            color: "blue"
            radius: 5
            x:s1.visualPosition * (s1.width-width)
            y: (s1.height-height)/2
            Text {
                id: name
                text: count
                color: "white"
                font.bold: true
                anchors.centerIn: parent
                font.pointSize: 10
            }
        }
        onValueChanged: {
            count=value
            zsliderChanged(value)
            console.log(serverZ.sendzText(count))
        }
    }
}
