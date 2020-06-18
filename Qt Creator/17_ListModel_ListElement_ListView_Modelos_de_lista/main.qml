import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    color: "#99aa99"

    ListModel {
        id: modeloArticulos

        ListElement {
            nombre: "Casco HJC"
            descripcion: "Fabricado en Alemania"
            precio: 390.00
        }
        ListElement {
            nombre: "Casco Shoe"
            descripcion: "Fabricado en Inglaterra"
            precio: 90.00
        }
        ListElement {
            nombre: "Casco Scorpion Exo"
            descripcion: "Fabricado en Holanda"
            precio: 290.00
        }
    }

    Component {             // Se encarga de mostrar los datos.
        id: componente
        Rectangle {
            width: 400
            height: 50
            color: "#ff8833"
            border.width: 4
            border.color: "red"
        Row {
            spacing: 10
            anchors.centerIn: parent
            Rectangle {
                width: 150
                height: 30
                color: "#ffffff"
                border.width: 2
                border.color: "black"
                Text { anchors.centerIn: parent; text: nombre; width: 150; font.pixelSize: 14 }
            }
            Rectangle {
                width: 150
                height: 30
                color: "#ffffff"
                border.width: 2
                border.color: "black"
                Text { anchors.centerIn: parent; text: descripcion; width: 150; font.pixelSize: 10; wrapMode: Text.WordWrap; }
            }
            Rectangle {
                width: 50
                height: 30
                color: "#ffffff"
                border.width: 2
                border.color: "black"
                Text { anchors.centerIn: parent; text: precio + ' €'; width: 50; font.pixelSize: 14 }
            }
        }
}

    }

    ListView {
        id: visor
        width: 400
        height: 400
        anchors.centerIn: parent
        model: modeloArticulos
        delegate: componente
        spacing: 30

    }


}
