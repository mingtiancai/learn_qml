import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyItem{
        id: myItem
    }

    MyText{
        id: myText
        y: 300

    }

    MyGrid{
        x: 200
        y: 200
    }
}
