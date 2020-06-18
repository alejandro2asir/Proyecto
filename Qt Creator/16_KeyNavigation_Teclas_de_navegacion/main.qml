import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    color: "#000000"
    id: ventana

    Column {
        id: columna
        spacing: 10
        anchors.centerIn: parent
        width: 300
        Rectangle {
            id: area1
            focus: true
            width: 340
            x: -20
            height: 100
            color: "red"
            opacity: activeFocus ? 1.0 : 0.2
            border.width: focus ? 6 : 2
            border.color: "#ff8833"

            onFocusChanged: if(activeFocus){width += 40}else{width -= 40}   // Si el focus cambia, aumenta el ancho, si no, disminuye.
            onWidthChanged: if(activeFocus){x -= 20}else{x += 20}           // Si el ancho cambia, disminuye la posición x, si no, aumenta.

            KeyNavigation.up: area3                                         // Si pulsamos la flecha de arriba, se dirige al area3.
            KeyNavigation.down: area2
        }
        Rectangle {
            id: area2
            width: 300
            height: 100
            color: "blue"
            opacity: focus ? 1.0 : 0.2
            border.width: focus ? 6 : 2
            border.color: "#ff8833"

            onFocusChanged: if(activeFocus){width += 40}else{width -= 40}
            onWidthChanged: if(activeFocus){x -= 20}else{x += 20}
            KeyNavigation.up: area1
            KeyNavigation.down: area3
        }
        Rectangle {
            id: area3
            width: 300
            height: 100
            color: "yellow"
            opacity: focus ? 1.0 : 0.2
            border.width: focus ? 6 : 2
            border.color: "#ff8833"

            onFocusChanged: if(activeFocus){width += 40}else{width -= 40}
            onWidthChanged: if(activeFocus){x -= 20}else{x += 20}
            KeyNavigation.up: area2
            KeyNavigation.down: area1
        }
    }

}
