import QtQuick 2.15


Window{
    id: rect

    width: 300
    height: calculateHeight()

    function calculateHeight()
    {
        return rect.width / 2;
    }
    Component.onCompleted: console.log("Completed Running!")
}
