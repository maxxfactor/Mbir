import QtQuick
import QtQuick.Layouts



Rectangle {
    property alias targetrect: rootMenuBarId
    property alias startButalias: startMenuButtonId
    id: rootMenuBarId
    width: (containerId.width - 20)
    height: (containerId.height / 17)
    color: "#D9333333"
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
        color: "transparent"
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
                    startMenuButtonId.color = "transparent"
                }
                else{
                    targetId.visible = true
                    targetId.setPageId.visible = false
                    startMenuButtonId.color = "#80000000"
                }
            }
        }
        HoverHandler{
            onHoveredChanged: {
            if(hovered){
                if(startMenuButtonId.color === targetId.isSelectedColor){

                }
                if(startMenuButtonId.color !== targetId.isSelectedColor){
                    startMenuButtonId.border.width = 2
                    startMenuButtonId.border.color = "red"
                    startMenuButtonId.color = "#ff333333"
                }
            }
                else{
                if(startMenuButtonId.color !== targetId.isSelectedColor){
                    startMenuButtonId.border.color = "transparent"
                    startMenuButtonId.color = "transparent"
                }
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
