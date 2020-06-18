import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    color: "#333333"

    Rectangle {
        id: origen
        width: 50
        height: 50
        x: 30
        y: 250
        radius: 25
        color: "#ffff00"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                origen.z = destino.z + 1        // "origen" se muestra encima de "destino".
                origen.x = destino.x            // "origen" ocupa la misma posición que "destino".
                origen.scale = 0.3              // El tamaño de "origen" pasa a ser "0.3"
            }
            onDoubleClicked: xAnimacion.start()
        }

        Behavior on x {             // Comportamiento sobre la propiedad posición "x".
            NumberAnimation{
                duration: 800       // Duración de animación en milisegundos.
                easing.type: Easing.OutBounce       // Tipo de efecto.
                // easing.type: Easing.OutElastic
            }

        }
        SequentialAnimation on x {
            id: xAnimacion
            //loops: Animation.Infinite       // Animacion en infinito.
            running: false
            NumberAnimation {
                duration: 800
                from: 50
                to: 350
                easing.type: Easing.OutBounce
            }
        }

    }
    Rectangle {
        id: destino
        width: 50
        height: 50
        x: 400
        y: 250
        radius: 25
        color: "red"
    }
}



