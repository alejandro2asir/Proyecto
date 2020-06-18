import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    x: (Screen.width-500)/2
    y: (Screen.height-500)/2
    color: "green"

    Row {
        spacing: 15
        anchors.centerIn: parent
        Column {
            spacing: 15     // Indica el espacio entre cada objeto
            Rectangle {
                width: 100
                height: 100
                color: "#ff8833"

            }

            Rectangle {
                width: 100
                height: 100
                color: "#ff3388"

            }

            Rectangle {
                width: 100
                height: 100
                color: "#33ff88"

            }

        }

        Column {
            spacing: 15     // Indica el espacio entre cada objeto
            Rectangle {
                width: 100
                height: 100
                color: "#ff8833"

            }

            Rectangle {
                width: 100
                height: 100
                color: "#ff3388"

            }

            Rectangle {
                width: 100
                height: 100
                color: "#33ff88"

            }

        }
    }

}
