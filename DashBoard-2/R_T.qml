import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

Rectangle{
    property int count: 0
    signal secondsignalforx(int xvalue)
    signal secondsignalfory(int yvalue)
    signal secondsignalforz(int zvalue)
    id:main_rect
    Layout.fillWidth: true
    Layout.fillHeight: true
    color: "Light grey"
    border.color: "grey"
    border.width: 2
    radius: 10
    AxisSliderX{
        id:axissliderX
        width:  main_rect.width*0.20
        height:main_rect.height*0.20
        anchors.top:main_rect.top
        anchors.topMargin: 5
        anchors.left: main_rect.left
        anchors.leftMargin: 20
        anchors.right: main_rect.right
        anchors.rightMargin: 130
        onXsliderChanged: {
            secondsignalforx(xval)
        }
    }
    AxisSliderY{
        id:axissliderY
        width:  main_rect.width*0.20
        height:main_rect.height*0.20
        anchors.top:axissliderX.bottom
        anchors.topMargin: 5
        anchors.left: main_rect.left
        anchors.leftMargin: 20
        anchors.right: main_rect.right
        anchors.rightMargin: 130
        onYsliderChanged: {
            secondsignalfory(yval)
        }
    }
    AxisSliderZ{
        id:axissliderZ
        width:  main_rect.width*0.20
        height:main_rect.height*0.20
        anchors.top:axissliderY.bottom
        anchors.topMargin: 5
        anchors.left: main_rect.left
        anchors.leftMargin: 20
        anchors.right: main_rect.right
        anchors.rightMargin: 130
        onZsliderChanged: {
            secondsignalforz(zval)
        }
    }
    Home{
        id:home
        height: main_rect.height*0.20
        width:main_rect.width*0.12
        anchors.top:main_rect.top
        anchors.topMargin: 8
        anchors.left: axissliderX.right
        anchors.leftMargin: 15
    }
    StartStop{
        id:start
        height: main_rect.height*0.20
        width:main_rect.width*0.12
        anchors.top:home.bottom
        anchors.topMargin: main_rect.height*0.02
        anchors.left: axissliderY.right
        anchors.leftMargin: 15
    }
    Exit{
        id:exit
        height: main_rect.height*0.20
        width:main_rect.width*0.12
        anchors.top:pause.bottom
        anchors.topMargin: main_rect.height*0.02
        anchors.left: axissliderY.right
        anchors.leftMargin: 15
    }
    RunPause{
        id:pause
        anchors.top:start.bottom
        height: main_rect.height*0.20
        width:main_rect.width*0.12
        anchors.topMargin:main_rect.height*0.02
        anchors.left: axissliderZ.right
        anchors.leftMargin: 15
    }
    Dial{
        id:axisbutton
        anchors.top:axissliderZ.bottom
        anchors.topMargin: 5
        anchors.left: main_rect.left
        anchors.leftMargin: -10
        from:0
        to:100
        width:main_rect.width*0.30
        height:main_rect.height*0.30
        hoverEnabled: true
        ToolTip.delay: 500
        ToolTip.timeout: 5000
        ToolTip.visible: hovered
        ToolTip.text:("Input Speed")
        Text {
            id: speedvalue
            text:count
            anchors.centerIn: axisbutton
            font.bold:true
        }
        onValueChanged: {
            count=value
            console.log(server.input_speed(count))
        }
    }
    Text {
        id: inputspeeds
        // text: qsTr("Input")
        font.bold:true
        font.pointSize: 8
        anchors.horizontalCenter: axisbutton.horizontalCenter
        anchors.top:axisbutton.bottom
        anchors.topMargin: 0

    }
    Area{
        id:outputspeed
        anchors.top:axisbutton.bottom
        anchors.topMargin: -50
        anchors.horizontalCenter: axissliderZ.horizontalCenter
    }
    Text {
        id: outputspeedtext
        text: qsTr("Output")
        font.bold:true
        font.pointSize: 8
        anchors.horizontalCenter: outputspeed.horizontalCenter
        anchors.top:outputspeed.bottom
        anchors.topMargin: 20
    }
    ServoSwitch{
        id:switchonoff
        anchors.right: exit.left
        anchors.rightMargin: 20
        anchors.top:axisbutton.bottom
        anchors.topMargin: -50
    }
    Text {
        id: servotext
        text: qsTr("Servo")
        font.bold:true
        font.pointSize: 8
        anchors.horizontalCenter: switchonoff.horizontalCenter
        anchors.top:switchonoff.bottom
        anchors.topMargin: 2
    }
    DropMenus{
        anchors.right:main_rect.right
        anchors.rightMargin: 35
        anchors.top: main_rect.top
        anchors.topMargin: 5
    }
}

