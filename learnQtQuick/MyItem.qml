import QtQuick

Item {
    Image{
        x: 80
        width: 100
        height: 100
        source: "resource/img/gangshou.jpeg"
    }

    Rectangle{
        opacity: 0.1
        x: 190
        width: 100
        height: 100
        color: "red"
        border.color:"black"
        border.width: 3
    }
}

