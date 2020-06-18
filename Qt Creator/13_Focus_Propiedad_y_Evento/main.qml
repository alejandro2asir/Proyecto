import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    title: "Ejemplo Focus"
    color: "green"


    Rectangle {
        anchors.fill: parent
        color: "#ff8800"
        id: contenedor
        focus: true                             // Propiedad Focus.
        MouseArea {
            anchors.fill: parent
            onClicked: {
                contenedor.focus = true         // Al hacer clic en el contenedor, activa Focus.
                contenedor.informar()           // Ejecuta la función "informar".
            }
        }

        Column {
            spacing: 10
            anchors.centerIn: parent
            Area {
                id: area1
                width: 300
                height: 100
            }
            Area {
                id: area2
                width: 300
                height: 100
            }
        }

        function informar() {
            if(area1.foco) {
                texto1.text = "Foco en Area 1"      // Si "area1" tiene foco, aparecerá el texto escrito.
            }else if(area2.foco){
                texto1.text = "Foco en Area 2"      // Si "area2" tiene foco, aparecerá el texto escrito.
            }else{
                texto1.text = "Foco Contenedor"     // Si "contenedor" tiene foco, aparecerá el texto escrito.
            }
        }

        Text {
            id: texto1
            text: "Sin novedades"
            font.pixelSize: 40
            color: "yellow"
        }
    }

}
