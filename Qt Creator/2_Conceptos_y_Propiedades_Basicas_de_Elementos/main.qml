import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Introduccion")

    Rectangle {                  // Creamos un rectángulo.
        id: rectangulo           // Su identificador.
        width: 150               // Anchura.
        height: 180              // Altura.
        color: "#e8731f"         // Color.
        anchors.centerIn: parent
        border.color: "#00cccc"  // Color del borde.
        border.width: 4          // Tamaño del borde.
        radius: 15               // Radio del borde.
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#e48f19";
            }
            GradientStop {
                position: 0.97;
                color: "#ffffff";
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
        rotation: 15              // Rotación del rectángulo.

    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            //Qt.quit();
            textoId.cambiar()


        }
    }

    Text {
        id: textoId
        text: qsTr("Conceptos")
        color: "#d31a1a"
        font.pointSize: 15
        anchors.centerIn: parent

        function cambiar(){
            text = "Ha cambiado."
            color = "blue"
        }
    }

}
