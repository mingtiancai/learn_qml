import QtQuick 2.15
import QtQuick.Window 2.15
import "factorial.js" as MathFunctions

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property var theArray: []
    property var theDate: new Date()

    MyComponent{
        id: test
        onMySignal: {
            console.log("slot my signal")
        }
    }

    MyComponent2{
        id: testr

    }

    MyComponent3{
        id: test3

    }

    MyComponent4{
        id: test4
    }

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
            console.log("factorial(10): ",MathFunctions.factorial(10))

//            test.show()
//            testr.show()
            test3.width = 100
            console.log("width: ",test3.width)
            console.log("height: ",test3.height)
//            test3.show()
            test4.show()

        }
   }
}

