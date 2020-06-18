import QtQuick 2.0

Item {
    property string titulo: "ninguno"
    width: parent.width
    height: 50
    Rectangle {
        color: "#fd0606"
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#fd0606";
            }
            GradientStop {
                position: 0.96;
                color: "#d75a5a";
            }
            GradientStop {
                position: 1.00;
                color: "#ffffff";
            }
        }
        anchors.fill: parent
        Text {
            anchors.centerIn: parent

            text: titulo
            font.pixelSize: 30
        }
    }
}
