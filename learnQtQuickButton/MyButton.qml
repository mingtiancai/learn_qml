import QtQuick
import QtQuick.Controls

Button {
    text: qsTr("Popup");
    anchors.centerIn: parent
    onClicked: popup.open()

    Popup {
        id: popup
        parent: ApplicationWindow.overlay
        x: (parent.width - width) / 2
        y: (parent.height - height) / 2
        width: 100; height: 100
    }
}
