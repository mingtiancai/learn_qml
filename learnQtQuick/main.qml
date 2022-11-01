import QtQuick

Window {
    width: 1000
    height: 1000
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

//    MyFlow{
//        x: 500
//        y: 500
//    }

//    MyTransition{
//        x: 500
//        y: 500
//    }

//    MyRepeator{
//        x: 500
//        y: 500
//    }

//    MyDoubleRect{
//        x: 400
//        y: 400
//    }

    MyLayout{
        x: 700
        y: 500
        visible: true
    }

}
