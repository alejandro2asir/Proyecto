import QtQuick 2.15
import QtQuick.Window 2.15
import "Utilidades.js" as JSUtils       // Importa "Utilidades.js"

Window {
    visible: true
    width: 500
    height: 500
    color: "green"

    Text {
        anchors.centerIn: parent
        text: "La suma es: " + JSUtils.operacion(10, 20)        // Añade la función del archivo .js.
        color: "yellow"
        font.pixelSize: 30
    }
}


