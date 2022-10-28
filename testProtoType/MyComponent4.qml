import QtQuick 2.15

Window {
    width: 400
    height: 400

    Rectangle {
        width: 10; height: width * 2
        color: "red"; anchors.centerIn: parent; focus: true
        Keys.onSpacePressed: height = Qt.binding(
                                 function() { return width * 3 })

        MouseArea {
            anchors.fill: parent
            onClicked: parent.width += 100
        }
    }
}
