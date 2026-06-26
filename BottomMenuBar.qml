import QtQuick
import QtQuick.Layouts



Rectangle {
    property alias targetrect: rootMenuBarId
    id: rootMenuBarId
    visible: true
    width: (containerId.width - 20)
    height: (containerId.height / 17)
    color: "Grey"
    radius: 20
    border.color: "white"
    border.width: 3
    anchors.bottom: containerId.bottom
    anchors.bottomMargin: 10
    anchors.horizontalCenter: containerId.horizontalCenter
    Text{
        id: clockId
        text: mainRoot.currentTime
        color: "white"
        font.bold: true
        font.pointSize: 17
        anchors.verticalCenter: rootMenuBarId.verticalCenter
        anchors.right: rootMenuBarId.right
        anchors.rightMargin: 10
    }
    Rectangle{
        id: startMenuButtonId
        width: (rootMenuBarId.width / 37)
        height: startMenuButtonId.width
        color: "dark grey"
        border.color: "white"
        border.width: 3
        radius: 20
        anchors.left: rootMenuBarId.left
        anchors.verticalCenter: rootMenuBarId.verticalCenter
        anchors.leftMargin: 10
        Text{
            id: startmenuTextId
            text: "S"
            font.bold: true
            font.pointSize: 20
            color: "white"
            anchors.centerIn: startMenuButtonId
        }

        MouseArea{
            id: startMouseId
            anchors.fill: startMenuButtonId
            onClicked: {
                if(targetId.visible === true){
                targetId.visible = false
                }
                else{
                    targetId.visible = true
                }
            }
        }
    }
    Rectangle{
        id: spacerId
        border.width: 3
        border.color: "white"
        height: startMenuButtonId.height
        width: 3
        anchors.verticalCenter: rootMenuBarId.verticalCenter
        anchors.left: startMenuButtonId.right
        anchors.leftMargin: 10
    }

    Component.onCompleted: updateTime()
}
