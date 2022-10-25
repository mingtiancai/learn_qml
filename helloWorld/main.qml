import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Row{
        id: testRow
        x: 0
        y: 0

        Rectangle{
            id: r1
            width: 10
            height: 20
            color: "green"
        }

        Rectangle{
            id: r2
            width: 10
            height: 20
            color: "yellow"
        }
    }

    Image{
           source: "resource/img/gangshou.jpeg"
           anchors.centerIn: parent
    }

    MouseArea{
        anchors.fill: parent
        onClicked:
        {
            console.log("clicked")
            console.log("clicked2")
            console.log(parent.width)
        }
    }
}
