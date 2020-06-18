import QtQuick 2.0

Item {
    property int ancho: 180
    property int alto: 350
    width: ancho
    height: alto
    Rectangle {
        anchors.centerIn: parent
        anchors.fill: parent
        width: 200
        height: 200
        color: "#ffff00"
        border.width: 5
        border.color: "#ff00ff"
        radius: 20

        Text {
            id: texto
            text: "El título de la ventana es: " + ventana.tituloVentana
            anchors.fill: parent
            wrapMode: Text.WordWrap
            font.pixelSize: parent.width/100*10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}
