import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

ApplicationWindow {
    id: mainRoot
    width: 800
    height: 800
    visible: true
    visibility: Window.FullScreen

    Rectangle{
        id: containerId
        anchors.fill: parent
        Image{
            id: backgroundId
            anchors.centerIn: parent
            source: "qrc:/wall.png"
        }


        Rectangle{
        id: bottomBarId
        height: (containerId.height / 17)
        width: (containerId.width - 20)
        color: "grey"
        anchors.horizontalCenter: containerId.horizontalCenter
        anchors.bottom: containerId.bottom
        anchors.bottomMargin: 10
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        radius: 20
        border.color: "white"
        border.width: 3
        }
    }
}
