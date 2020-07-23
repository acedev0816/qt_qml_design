import QtQuick 2.0
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
Item {

    id: container

    signal clicked(color cellColor)


    property alias  mark: img_mark.source
    property alias  title: txt_title.text
    property alias  subtitle : txt_subtitle.text

    Rectangle{
        id: rectangle
        anchors.fill: parent
        color:'white'
        radius: 4

        ColumnLayout
        {
            anchors.fill: parent
            spacing:0
            Image
            {
                id: img_mark
                Layout.alignment: Qt.AlignCenter

            }
            Text
            {
                id: txt_title

                font.pixelSize: 14
                Layout.alignment: Qt.AlignCenter
            }
            Text
            {
                color: 'gray'
                font.pixelSize: 12
                id: txt_subtitle
                Layout.alignment: Qt.AlignCenter
            }
        }

    }
    DropShadow
    {
        id: shadow
        anchors.fill: rectangle
        horizontalOffset: 1
        verticalOffset: 1
        radius: 5.0
        samples: 17
        color: "#888888"
        source: rectangle
    }

    MouseArea {
        hoverEnabled: true
        anchors.fill: parent
        onClicked: {
            shadow.radius = 10.0;
            container.clicked(container.title)
        }
        onEntered: {
            shadow.radius=10.0;
        }
        onExited: {
            shadow.radius=6.0;
        }
        onPressed: {
            shadow.horizontalOffset = -1;
            shadow.verticalOffset = -1;
        }
        onReleased: {
            shadow.horizontalOffset = 1;
            shadow.verticalOffset = 1;
        }
    }


}
