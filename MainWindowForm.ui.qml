import QtQuick 2.4
import QtQuick.Extras 1.4
import QtQuick.Controls 2.0
import QtQuick.Controls.Styles 1.4

Item {
    id: item1
    width: 800
    height: 800
    FontLoader { id: digital; source: "qrc:/fonts/digital-7.ttf" }

    Flow {
        id: flow2
        anchors.left: column3.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.leftMargin: 0

        Row {
            id: row1
            width: 252
            height: 50
            spacing: 5

            Text {
                id: text3
                text: qsTr("Höhe:")
                font.pixelSize: 31
            }

            Text {
                id: text4
                height: 42
                text: "100000.0"
                font.family: digital.name
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 31
            }

            Text {
                id: text7
                text: qsTr("m")
                horizontalAlignment: Text.AlignLeft
                font.pixelSize: 31
            }
        }

        Row {
            id: row2
            width: 381
            height: 50
            spacing: 5

            Text {
                id: text5
                text: qsTr("Geschwindigkeit:")
                font.pixelSize: 31
            }

            Text {
                id: text6
                height: 42
                font.family: digital.name
                text: qsTr("10000")
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 31
            }

            Text {
                id: text8
                text: qsTr("m/s")
                font.pixelSize: 31
            }
        }

        Row {
            id: row3
            width: 240
            height: 50
            spacing: 5

            Text {
                id: text9
                text: qsTr("Apoggee")
                font.pixelSize: 31
            }

            StatusIndicator {
                id: statusIndicator1
                width: 70
                height: 40
                active: false
            }
        }

        Row {
            id: row4
            width: 177
            height: 50
            spacing: 5

            Text {
                id: text10
                text: qsTr("Drogue")
                font.pixelSize: 31
            }

            StatusIndicator {
                id: statusIndicator2
                width: 70
                height: 40
            }
        }
    }

    Column {
        id: column3
        width: 409
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0

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
                value: 0
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
}

