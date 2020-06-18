import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 1000
    height: 500
    color: "#000000"

    Rectangle {
        property bool giroHabilitado: true
        property int totalGiro: 0

        signal desactivado          // Señal "desactivado".
        signal activado             // Señal "activado".
        onDesactivado: {            // Si la señal "desactivado" se activa....
            area1.giroHabilitado = false       // No puede girar.
        }
        onActivado: {               // Si la señal "activado" se activa...
            area1.giroHabilitado = true        // Puede girar.
        }

        id: area1
        antialiasing: true
        width: 100
        height: 100
        anchors.centerIn: parent
        color: area1.giroHabilitado ? "#ff8833" : "#cccccc" // Si puede girar, el color será naranja, si no, gris.
        MouseArea {
            anchors.fill: parent
            onClicked: area1.desactivado();     // Al hacer clic, se desactiva el giro.
            onDoubleClicked: area1.activado();  // Al hace doble clic, se activa el giro.
        }

        Component.onCompleted: {                // Cuando el componente se completa llama a las siguientes funciones.
            area1.desactivado.connect(informar)
            area1.activado.connect(reiniciar)
        }

        function informar() {
            texto2.text = "Deshabilitado en "+ area1.totalGiro + " grados."     // Muestra el total de grados.
        }
        function reiniciar() {
            texto2.text = "0 grados."
            area1.rotation = 0              // Vuelva a la rotación 0.
            area1.totalGiro = 0             // Vuelve a escribir 0.
        }
    }

    Row {
        spacing: 10
        width: 800
        anchors.horizontalCenter: area1.horizontalCenter
        Rectangle {
            width: 100
            height: 50
            color: "#cc00cc"
            Text {
                id: encendido
                anchors.centerIn: parent
                text: girar.running ? "Detener" : "Girar"       // Cambia si está girando o no.
                color: "#ffff00"
            }
            MouseArea {
                id: areaEncendido
                anchors.fill: parent
                onClicked: {
                    if(!girar.running && area1.giroHabilitado) {    // Si se activa "girar" y "giroHabilitado"...
                        girar.start()                               // Empieza a girar.
                    }else{
                        girar.stop()                                // Por el contrario se para.
                    }
                }
            }
        }
        Rectangle {
            width: 300
            height: 50
            color: "#0000cc"
            Text {
                id: texto1
                anchors.centerIn: parent
                text: area1.giroHabilitado ? "Giro Habilitado" : "Giro Inhabilitado"
                color: "#ffff00"
            }
        }
        Rectangle {
            width: 300
            height: 50
            color: "#0000cc"
            Text {
                id: texto2
                anchors.centerIn: parent
                text: "0 grados"
                color: "#00ffff"
            }
        }
    }

    Timer {
        id: girar
        repeat: true
        interval: 100               // Son los milisegundos que tarda en efectuar una acción.
        running: false              // Decimos que no esté ejecutándose al iniciar la app.
        onTriggered: {              // Disparador.
            area1.rotation+=5;      // Rotación.
            area1.totalGiro++       // Total de grados girados se suma.
            texto2.text = ""+area1.totalGiro+" grados."     // Muestra el total de grados girados.
        }
    }



}
