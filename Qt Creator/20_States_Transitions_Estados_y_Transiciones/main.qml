import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: ventana
    visible: true
    width: 500
    height: 500
    color: "#333333"

    Column {
        id: columna
        anchors.fill: parent
        spacing: 0
        Titulo {
            titulo: "Area 1"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    area1.state = "visible"
                    area2.state = "invisible"
                    area3.state = "invisible"
                }
            }
        }
        Area {
            id: area1
            mensaje: 1
            state: "visible"
            states: [
                State {
                    name: "visible"
                    PropertyChanges {
                        target: area1
                        height: 350
                    }
                },
                State {
                    name: "invisible"
                    PropertyChanges {
                        target: area1
                        height: 5
                    }
                }
            ]
            transitions: [
                Transition {
                    from: "visible"
                    to: "invisible"
                    NumberAnimation {
                        target: area1
                        duration: 1000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                },
                Transition {
                    from: "invisible"
                    to: "visible"
                    NumberAnimation {
                        target: area1
                        duration: 1000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }

            ]
        }
        Titulo {
            titulo: "Area 2"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    area1.state = "invisible"
                    area2.state = "visible"
                    area3.state = "invisible"
                }
            }
        }
        Area {
            id: area2
            mensaje: 2
            states: [
                State {
                    name: "visible"
                    PropertyChanges {
                        target: area2
                        height: 350
                    }
                },
                State {
                    name: "invisible"
                    PropertyChanges {
                        target: area2
                        height: 5
                    }
                }
            ]
            transitions: [
                Transition {
                    from: "visible"
                    to: "invisible"
                    NumberAnimation {
                        target: area2
                        duration: 1000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                },
                Transition {
                    from: "invisible"
                    to: "visible"
                    NumberAnimation {
                        target: area2
                        duration: 1000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }

            ]
        }
        Titulo {
            titulo: "Area 3"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    area1.state = "invisible"
                    area2.state = "invisible"
                    area3.state = "visible"
                }
            }
        }
        Area {
            id: area3
            mensaje: 3
            states: [
                State {
                    name: "visible"
                    PropertyChanges {
                        target: area3
                        height: 350
                    }
                },
                State {
                    name: "invisible"
                    PropertyChanges {
                        target: area3
                        height: 5
                    }
                }
            ]
            transitions: [
                Transition {
                    from: "visible"
                    to: "invisible"
                    NumberAnimation {
                        target: area3
                        duration: 1000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                },
                Transition {
                    from: "invisible"
                    to: "visible"
                    NumberAnimation {
                        target: area3
                        duration: 1000
                        easing.type: Easing.InOutSine
                        property: "height"
                    }
                }

            ]
        }
    }

}
