import QtQuick 2.4
import QtQuick.Extras 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4

Item {
    id: item1
    width: 800
    height: 800

    Flow {
        id: flow1
        anchors.right: parent.horizontalCenter
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        flow: Flow.TopToBottom

        Column {
            id: column1
            width: 415
            height: 358
            spacing: 13

            Text {
                id: text1
                text: qsTr("Geschwindigkeit")
                font.pixelSize: 30
            }

            CircularGauge {
                id: gauge
                width: 400
                height: 300
                value: 90
                maximumValue: 100
                style: CircularStyle{}
            }
        }

        Column {
            id: column2
            width: 407
            height: 350
            spacing: 13

            Text {
                id: text2
                text: qsTr("Beschleunigung")
                font.pixelSize: 30
            }

            CircularGauge {
                id: circularGauge1
                width: 400
                height: 300
                style: AccellartionStyle{}
            }
        }
    }

    Flow {
        id: flow2
        anchors.left: flow1.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.leftMargin: 0
    }
}

