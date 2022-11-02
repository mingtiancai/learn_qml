import QtQuick
import QtQuick .Controls

Column {
        spacing: 20
        anchors.centerIn: parent

        ProgressBar {
            value: 0.5
        }

        ProgressBar {
            id: control; value: 0.5
            background: Rectangle {
                implicitWidth: 200; implicitHeight: 6
                color: "#e6e6e6"; radius: 3
            }

            contentItem: Item {
                implicitWidth: 200; implicitHeight: 4
                Rectangle {
                    width: control.visualPosition * parent.width
                    height: parent.height; radius: parent.height / 2
                    color: "#17a81a"
                }
            }
        }
    }
