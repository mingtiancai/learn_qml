import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image{
           source: "resource/img/gangshou.jpeg"
           anchors.centerIn: parent
    }

    MouseArea{
        anchors.fill: parent
        onClicked: console.log("clicked")
    }
}
