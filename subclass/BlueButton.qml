import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

Rectangle {
    id: btn
    property string imageSource: ""
    property string textValue: ""
    property string col : Literals.blueButtonColor
    property real buttonSize: Qt.application.font.pixelSize * 1.6

    signal clicked()

    MouseArea{
        anchors.fill: parent
    hoverEnabled: true

        onEntered: {
            btn.color = Qt.darker(col, 1.4)
            cursorShape = Qt.PointingHandCursor

        }

        onExited: {
            btn.color = col
            cursorShape = Qt.ArrowCursor
        }

     onPressed: {
         btn.color = Qt.darker(col, 1.7)
     }
     onReleased: {
         btn.color = col
     }
        onClicked: {
            btn.clicked()
        }
    }



        color: col

        implicitWidth: buttonText.width + 60
        implicitHeight:  width/3.4
        border.width: 0
        border.color: "#880099ee"
        radius: .5


        Behavior on color {
            ColorAnimation {
                duration: 200
            }
        }

    Layout.fillHeight: true
    Layout.fillWidth: false

        Image {
            id: name
            source: imageSource == "" ? "" : "../" + imageSource
            sourceSize.width: imageSource == "" ? 0 : 20
        }
        Text {
            id: buttonText
            text: textValue
            font.weight: Literals.fontWeight
            color: Literals.fontcolor
            horizontalAlignment: Text.AlignHCenter
            Layout.fillWidth: true
            font.pixelSize: buttonSize
            anchors.centerIn: parent
        }


}
