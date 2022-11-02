import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

//    MyLabel{
//        x: 20
//        y: 20
//    }

//    MyProgress{
//        x: 20
//        y: 20
//    }

//    MyBusyIndicator{
//        x: 20
//        y: 20
//    }

    MyPageIndicator{
        x: 20
        y: 20
    }
}
