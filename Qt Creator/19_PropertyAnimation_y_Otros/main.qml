import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    color: "#000000"
    MouseArea {
        anchors.fill: parent
        onClicked: {
            desplazamiento.start()
        }
    }

    Rectangle {
        id: caja
        width: 100
        height: 50
        color: "#ff8833"
        border.width: 6
        border.color: "red"
    }

    //ParallelAnimation{}         // Animación paralela. Significa que lee todas las propiedades a la vez.
    SequentialAnimation {       // Animación secuencial. Significa que primero lee una propiedad de animación y hasta que no termine no pasa a la siguiente.
        id: desplazamiento
    PropertyAnimation {
        target: caja
        property: "x"
        to: 350
        duration: 2000
        running: false
    }

    /*PauseAnimation {          // Pausa la animación el tiempo que le digamos.
        duration: 200
    }*/
    PropertyAnimation {
        target: caja
        property: "y"
        to: 350
        duration: 2000
        running: false
    }
    PropertyAnimation {
        target: caja
        property: "rotation"
        to: 180
        duration: 2000
        running: false
    }
}


}
