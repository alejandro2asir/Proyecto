import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 500
    height: 500
    x: 360
    y: 110
    color: "green"

    Grid {
        anchors.centerIn: parent
        spacing: 8
        rows: 2
    Cartel{}        // Añade el cartel con su código del fichero "Cartel.qml"
    Cartel{}
    Cartel{}
    Cartel{}
}
}
