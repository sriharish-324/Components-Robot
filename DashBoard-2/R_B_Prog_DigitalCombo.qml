import QtQuick 2.6
import QtQuick.Controls 2.0

ComboBox {
    id: control
    model: ["DIGITAL1", "DIGITAL2", "DIGITAL3"]
    delegate: ItemDelegate {
        width: control.width
        contentItem: Text {
            text: modelData
            color: "Black"
            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
        }
        highlighted: control.highlightedIndex === index
    }
    indicator: Canvas {
        id: canvas
        x: control.width - width - control.rightPadding
        y: control.topPadding + (control.availableHeight - height) / 2
        width: 6
        height: 6
        contextType: "2d"
        //        Connections {
        //            target: control
        //            function onPressedChanged() { canvas.requestPaint(); }
        //        }
        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width, 0);
            context.lineTo(width / 2, height);
            context.closePath();
            context.fillStyle = control.pressed ? "#17a81a" : "#21be2b";
            context.fill();
        }
    }
    contentItem: Text {
        leftPadding: 0
        rightPadding: control.indicator.width + control.spacing
        anchors.centerIn:outrect
        text: control.displayText
        font: control.font
        color: control.pressed ? "#17a81a" : "#21be2b"
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
    background: Rectangle {
        id:outrect
        implicitWidth: 80
        implicitHeight: 25
        border.color: control.pressed ? "black" : "gray"
        border.width: control.visualFocus ? 2 : 1
        radius: 2
    }
    popup: Popup {
        y: control.height - 1
        width: control.width
        implicitHeight: contentItem.implicitHeight
        padding: 1
        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: control.popup.visible ? control.delegateModel : null
            currentIndex: control.highlightedIndex
            ScrollIndicator.vertical: ScrollIndicator { }
        }
        background: Rectangle {
            border.color: "gray"
            radius: 2
        }
    }
    onActivated: {
        server.sendText(control.currentText)
    }
}