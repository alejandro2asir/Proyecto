import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    x: 360
    y: 110
    color: "green"

    //Flow             // Ordena en una sola fila todos los elemtos, organizándolos según el ancho.
    Grid {             // Ordena en columnas y filas que le digamos.
        spacing: 8
        width: 300
        anchors.centerIn: parent
        rows: 2        // Filas.
        columns: 6     // Columnas.
    Rectangle {width: 50; height: 50; color: "#ff8833";Text{text:"Uno"}}
    Rectangle {x: 30;y: 10 ; width: 50; height: 50; color: "#ff3388";Text{text:"Dos"}}
    Rectangle {x: 0; y: 55; width: 50; height: 50; color: "#33ff88";Text{text:"Tres"}}
    Rectangle {x: 120; y: 5; width: 50; height: 50; color: "#ff8833";Text{text:"Cuatro"}}
    Rectangle {x: 62; y: 45; width: 50; height: 50; color: "#ffff00";Text{text:"Cinco"}}
    Rectangle {x: 90; y: 60; width: 50; height: 50; color: "#ff8855";Text{text:"Seis"}}
    Rectangle {x: 40; y: 110; width: 50; height: 50; color: "#ff33ff";Text{text:"Siete"}}
    Rectangle {x: 8; y: 116; width: 50; height: 50; color: "#883388";Text{text:"Ocho"}}
    Rectangle {x: 110; y: 124; width: 50; height: 50; color: "#ffffff";Text{text:"Nueve"}}
    Rectangle {x: 168; y: 186; width: 50; height: 50; color: "#ff8800";Text{text:"Diez"}}
    Rectangle {x: 230; y: 260; width: 50; height: 50; color: "#003388";Text{text:"Once"}}
}


}
