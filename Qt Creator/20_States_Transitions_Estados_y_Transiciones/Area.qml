import QtQuick 2.0

Item {
    property int mensaje: 0
    width: parent.width


    Rectangle {
        anchors.fill: parent
        Text {
            id: texto
            text: "Esto es un ejemplo"
            font.pixelSize: 20

        }
    }
}
