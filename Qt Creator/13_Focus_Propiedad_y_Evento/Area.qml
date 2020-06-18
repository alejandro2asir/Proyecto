import QtQuick 2.0

Item {
    property bool foco: area.focus          // Propiedad booleana "foco".
    property int veces: 0                   // Propiedad entera "veces".
    Rectangle {
        id: area
        anchors.centerIn: parent
        anchors.fill: parent
        color: focus ? "#80ff00" : "#e6e688"    // Llamamos a "focus" y decimos que si está activo selecciona un color y por el contrario el 2 color.
        border.width: area.focus ? 6 : 2        // Cambia el tamaño del borde dependiendo de si hay foco o no.
        border.color: "#000000"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                area.focus = true               // Al hacer clic el foco se activa.
                contenedor.focus = false        // El contenedor pasa a tener foco inactivo.
                contenedor.informar()           // Activa la función "informar".
            }
        }
        onFocusChanged: {                       // Si el foco cambia...
            if(focus)
                veces++;                        // Suma 1 a la propiedad entera "veces".
        }

        Text {
            anchors.centerIn: parent
            text: area.focus ? "Foco Activo " + veces + " veces" : "Foco Inactivo " + veces + " veces" // Muestra la propiedad "veces".
        }
    }

}
