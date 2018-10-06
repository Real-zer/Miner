import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
Pane {

    background: Rectangle{
        color: Literals.transparent
    }

    id: logo
    padding: 9
    RowLayout {
        anchors.fill: parent

                Image {
                    id: bannerImage
                //    source: "images/jahminer icon.png"
                    source: "images/icon.ico"
                    sourceSize.width: 48
                    sourceSize.height: 48
                    rotation: 0
                    Item {
                        implicitHeight: 50
                        implicitWidth: 50
                    }

                }


        Label {
            id: title
            width: 68
            height: 39
            color: Literals.fontcolor
            Layout.fillHeight: true
            verticalAlignment: Text.AlignVCenter
            text: qsTr("  JAHMINER")
            font.weight: Literals.fontWeightLighter
            font.pixelSize: Qt.application.font.pixelSize * 1.9

        }
        }
}

