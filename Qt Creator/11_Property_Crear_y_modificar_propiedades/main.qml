import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    property string tituloVentana: "Nuevo Titulo"
    id: ventana
    visible: true
    width: 500
    height: 500
    title: tituloVentana
    color: "green"

    Cartel2 {
        anchors.centerIn: parent
        ancho: 400
        alto: 150
    }

}
