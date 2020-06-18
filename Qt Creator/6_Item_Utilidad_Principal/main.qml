import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    x: (Screen.width-500)/2
    y: (Screen.height-500)/2
    color: "green"
    Item {
        id: elemento
        width: 200
        height: 200
        z: 100
        x: 100
        y: 50

        Rectangle {
            width: 200
            height: 100
            color: "yellow"
        }
        Rectangle {
            width: 200
            height: 100
            color: "red"
            y: 100
        }
    }
    Rectangle {
        width: 250
        height: 250
        anchors.centerIn: parent
        color: "blue"
    }

}
