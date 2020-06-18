import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    x: (Screen.width-500)/2
    y: (Screen.height-500)/2
    color: "green"


    Flickable {
        width: 200
        height: 200
        x: 30
        y: 30
        //anchors.fill: parent                       // Anclamos el relleno al área de la ventana y así desplazar donde queramos.
        contentWidth: spidey.sourceSize.width-100    // Especificamos el ancho que podemos desplazar.
        contentHeight: spidey.sourceSize.height-100  // Especificamos la altura que podemos desplazar.
        //boundsBehavior: Flickable.StopAtBounds     // Con esto detenemos el efecto rebote que trae por defecto al desplazar.
        //interactive: false                         // Desactiva la función de desplazar.

        Image{
            id: spidey
            source: "file:/Users/alexa/Desktop/QML/Qt Creator/5_Image_Propiedades_Basicas/Imagen/qml.jpg"

        }
    }

    Text {
        id: tamanioImagen
        text: spidey.sourceSize.width+"x"+spidey.sourceSize.height  // Mostramos en pantalla el tamaño de la imagen.
        color: "yellow"
    }

    Rectangle {
        x: 30
        y: 30
        width: 200
        height: 200
        color: "red"
        opacity: 0.5
    }

}
