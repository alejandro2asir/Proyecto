import QtQuick 2.15
import QtQuick.Window 2.15

Window {    //Componente padre(parent) y ventana.
    visible: true   // true\false   "Muestra la ventana."
    width: 640      // "Ancho de la ventana."
    height: 480     // "Altura de la ventana."
    title: qsTr("Introduccion") // "Título de la ventana"

    MouseArea {     // Configuracion del area del ratón.
        anchors.fill: parent    // Permite seleccionar el espacio de acción, en este caso "parent", que es la ventana "Window".
        onClicked: {            // Definimos que sucede cuando clickamos con el ratón.
            //Qt.quit();          // Cierra la app.
            textoId.cambiar()   //Activamos la funcíon "cambiar" junto con el texto.


        }
    }

    Text {   //Creamos un campo de texto.
        id: textoId                 //Identificación del texto.
        text: qsTr("Introduccion")  // Escribimos el texto.
        color: "#d31a1a"            // Color del texto.
        font.pointSize: 15          //Tamaño del texto.
        anchors.centerIn: parent    // Muestra el texto en el centro de "parent", la ventana "Window".

        function cambiar(){         // Creamos la función "cambiar".
            text = "Ha cambiado."   // Decimos que el texto sea "Ha cambiado".
            color = "blue"          // Cambiamos el color.
        }
    }

}
