import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    id: ventanaprincipal
    width: 500
    height: 500
    title: qsTr("Hello World")

    Rectangle {
        width: 300
        height: 250
        color: "#ff8833"
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent        // Al estar anclado al área de parent(Rectangle) tendrá el mismo tamaño.
            hoverEnabled: true          // Permite detectar la posicion del ratón.
            onClicked: {                // Cuando clickamos con el ratón, se activará los parámetros de entre las llaves.
                //Qt.quit();
            }
            /*onDoubleClicked: {
                ventanaprincipal.color = "blue"     // Haciendo doble clic cambiaremos el fondo de la ventana.
            }
            onEntered: {
                ventanaprincipal.color = "brown"    // Cuando el ratón entra, el fondo cambia a marrón.
            }
            onExited: {
                ventanaprincipal.color = "yellow"   // Cuando el ratón sale, el fondo cambia a amarillo.
            }
            onHoveredChanged: {
                ventanaprincipal.color = "red"      // Cuando el ratón ha estado encima del rectángulo, se queda el fondo rojo.
            }*/
            onPressed: {
                ventanaprincipal.color = "red"      // Si mantenemos pulsado el ratón, el fondo será rojo.
            }
            onReleased: {
                ventanaprincipal.color = "pink"     // Por el contrario si lo soltamos, el fondo será rosa.
            }
            onPositionChanged: {
                mensaje.text = "Pos X:" + mouse.x + " Pos Y:" + mouse.y // Muestra la posición del ratón en todo momento.
            }

        }
        Text {
            id: mensaje
            text: qsTr("MouseArea")
            anchors.centerIn: parent
        }
    }

}
