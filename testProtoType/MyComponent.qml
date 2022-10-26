import QtQuick 2.15

Window{
    width: 400
    height: 400

    id: myComponent

    Row{
        Text{
            font.pixelSize: 12
            font.bold: true
            text: "text1"
        }

        Text{
            font{
                pixelSize: 15
                bold: false
            }
            text: "text2"
        }
    }

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
            myComponent.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1)
        }
    }
}
