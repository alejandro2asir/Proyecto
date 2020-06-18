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


        // Keys.onAsteriskPressed: {}
        // Keys.enabled : bool {}
        // Keys.forwardTo : list<Object>{}
        // Keys.priority : enumeration{}
        // Keys.asteriskPressed{}
        // Keys.backPressed{}
        // Keys.backtabPressed{}
        // Keys.callPressed{}
        // Keys.cancelPressed{}
        // Keys.context1Pressed{}
        // Keys.context2Pressed{}
        // Keys.context3Pressed{}
        // Keys.context4Pressed{}
        // Keys.deletePressed{}
        // Keys.digit0Pressed{}
        // Keys.digit1Pressed{}
        // Keys.digit2Pressed{}
        // Keys.digit3Pressed{}
        // Keys.digit4Pressed{}
        // Keys.digit5Pressed{}
        // Keys.digit6Pressed{}
        // Keys.digit7Pressed{}
        // Keys.digit8Pressed{}
        // Keys.digit9Pressed{}
        // Keys.downPressed{}
        // Keys.enterPressed{}
        // Keys.escapePressed{}
        // Keys.flipPressed{}
        // Keys.hangupPressed{}
        // Keys.leftPressed{}
        // Keys.menuPressed{}
        // Keys.noPressed{}
        // Keys.pressed{}
        // Keys.released{}
        // Keys.returnPressed{}
        // Keys.rightPressed{}
        // Keys.selectPressed{}
        // Keys.shortcutOverride{}
        // Keys.spacePressed{}
        // Keys.tabPressed{}
        // Keys.upPressed{}
        // Keys.volumeDownPressed{}
        // Keys.volumeUpPressed{}
        // Keys.yesPressed{}

        Keys.onPressed: {
            if ((event.key == Qt.Key_A) && (event.modifiers & Qt.ControlModifier)){ // Si pulsas Control + A se ejecuta la acción.
                texto1.text = 'Tecla A ha sido presionada'
            }else if (event.key == Qt.Key_B){                                       // Al presionar la tecla B se ejecuta la acción.
                texto1.text = 'Tecla B ha sido presionada'
            }else if (event.key == Qt.Key_C){                                       // Al presionar la tecla C se ejecuta la acción.
                texto1.text = 'Tecla C ha sido presionada'
            }
        }

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
