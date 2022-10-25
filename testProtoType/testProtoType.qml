import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property var theArray: []
    property var theDate: new Date()

    MouseArea{
        anchors.fill: parent
        onClicked:
        {
            console.log("clicked")
            console.log("clicked2")
            console.log(parent.width)

            for(var i = 0; i < 10; i++)
            {
                theArray.push("item"+i)
            }

            for(var i = 0; i < theArray.length; i++)
            {
                console.log(theArray[i])
            }

            console.log(theDate)
        }
   }
}
