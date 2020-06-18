import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: Screen.width/2       // Anchura de la ventana siendo al mitad de nuestra pantalla.
    height: Screen.height/2     // Altura de la ventana siendo al mitad de nuestra pantalla.
    title: qsTr("Hello World")


    Text {
        text: "<b> Texto en negrita </b><br> Listado:<br>Linea 1<br>Linea 2<br>Linea 3"
        anchors.centerIn: parent
        font.pixelSize: Window.width/100*4 // Utilizamos esta linea para cambiar el tamaño de la fuente a la vez que el de la ventana.
        font.family: "Verdana"                          // Tipo de fuente.
        //font.capitalization: Font.AllUppercase        // Todas las letras se vuelven mayúsculas.
        //font.capitalization: Font.AllLowercase        // Todas las letras se vuelven minúsculas.
        //font.weight: Font.Bold                        // Cambiamos el tipo de letra, en este caso todo en negrita.
        horizontalAlignment: Text.AlignRight            // Alinear texto hacia la derecha.
    }

}
