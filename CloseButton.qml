import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
Item {

    id: container

    signal clicked()

    width: 15; height: 15

    Text
    {
        anchors.fill: parent
        font.pixelSize: 16
        id: txt_x
        Layout.alignment: Qt.AlignCenter
        text:"X"
        color:'#333333'
    }

    DropShadow
    {
        id: shadow
        anchors.fill: txt_x
        horizontalOffset: 1
        verticalOffset: 1
        radius: 1.0
        samples: 10
        color: "#888888"
        source: txt_x
    }

    MouseArea {
        hoverEnabled: true
        anchors.fill: parent
        onClicked: {

            container.clicked()
        }
        onEntered: {
            shadow.radius=2.0;
            shadow.horizontalOffset = 2;
            shadow.verticalOffset = 2;
        }
        onExited: {
            shadow.radius=1.0;
            shadow.horizontalOffset = 1;
            shadow.verticalOffset = 1;
        }
        onPressed: {
            shadow.horizontalOffset = -2;
            shadow.verticalOffset = -2;
            shadow.radius = 3.0;
        }
        onReleased: {
            shadow.horizontalOffset = 1;
            shadow.verticalOffset = 1;
        }
    }


}
