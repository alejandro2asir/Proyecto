import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 800
    height: 800
    x: 250
    y: 250
    color: "#ff8833"

    Rectangle {
        width: 550
        height: 550
        anchors.centerIn: parent
        color: "red"

        Text {
            id: texto
            text: qsTr("Spider-Man")
            anchors.centerIn: parent
            color: "yellow"
            z: 99           // Posición del texto.
        }
        Image {
            id: imagen1
            source: "file:C:/Users/alexa/Desktop/QML/Qt Creator/5_Image_Propiedades_Basicas/Imagen/qml.jpg" //Ruta de la imagen.
            width: 350
            height: 450
            anchors.centerIn: parent
            z: 98           // Posición de la imagen. Al ser menor que el texto, quedará debajo.
            fillMode: Image.PreserveAspectCrop       // Tipo de formato.
            sourceSize.width: 300       // Anchura del origen de la imagen.
            sourceSize.height: 300      // Altura del origen de la imagen.
            rotation: -35                // Rotación de la imagen.
        }
    }

}
