import QtQuick 2.15

Window{
    width: 400
    height: 400

    property list <Rectangle> childRects:[
        Rectangle {
            x: 10
            y: 10
            width: 10
            height: 10
            color: "red"
        },

        Rectangle{
            x: 20
            y:10
            width: 10
            height: 10
            color: "blue"
        }
    ]

    MouseArea{
        anchors.fill: parent
        onClicked: {
            for(var i =0; i < childRects.length; i++)
            {
                console.log(childRects[i].color)
            }
        }
    }
}
