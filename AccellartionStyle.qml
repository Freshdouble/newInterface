import QtQuick 2.4
import QtQuick.Controls.Styles 1.4

CircularGaugeStyle {
    FontLoader { id: digital; source: "qrc:/fonts/digital-7.ttf" }
    property real xCenter: outerRadius
    property real yCenter: outerRadius
    property real needleLength: outerRadius - tickmarkInset * 1.25
    property real needleTipWidth: toPixels(0.02)
    property real needleBaseWidth: toPixels(0.06)
    property bool halfGauge: false

    function toPixels(percentage) {
        return percentage * outerRadius;
    }

    function degToRad(degrees) {
        return degrees * (Math.PI / 180);
    }

    function radToDeg(radians) {
        return radians * (180 / Math.PI);
    }

    function toFixed(value, dezimals)
    {
        return value.toFixed(dezimals).toString();
    }
    tickmark: Rectangle {
            implicitWidth: outerRadius * 0.02
            antialiasing: true
            implicitHeight: outerRadius * 0.06
            color: "black"
        }

    minorTickmark: Rectangle {
            implicitWidth: outerRadius * 0.01
            antialiasing: true
            implicitHeight: outerRadius * 0.03
            color: "grey"
        }

    background: Canvas {

        Text {
            id: speedText
            font.family: digital.name
            font.pixelSize: toPixels(0.3)
            text: toFixed(control.value/10,1)
            color: "black"
            horizontalAlignment: Text.AlignRight
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.verticalCenter
            anchors.topMargin: toPixels(0.1)
        }
        Text {
            text: "g"
            color: "black"
            font.pixelSize: toPixels(0.09)
            anchors.top: speedText.bottom
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    tickmarkLabel: Text {
            font.pixelSize: Math.max(6, __protectedScope.toPixels(0.12))
            text: toFixed(styleData.value/10,1)
            color: "grey"
            antialiasing: true
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
}
