import QtQuick 2.15

Window{
    id: rect
    width: 300
    height: 300

    MouseArea{
        id: mouseAres
        anchors.fill: parent
    }

    Connections{
        target: mouseAres

        function onClicked()
        {
            rect.color = "red"
        }
    }

}
