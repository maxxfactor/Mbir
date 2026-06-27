import QtQuick

Rectangle {
    property alias anchoredRect: rootMainMenuId
    id: rootMainMenuId
    width: (containerId.width / 4)
    height: (containerId.height / 2)
    radius: 20
    color: "#D9333333"
    border.color: "white"
    border.width: 3
    Rectangle{
        id: userBubbleId
        border.width: 3
        color: "ff333333"
        radius: 20
        border.color: "white"
        width: (rootMainMenuId.width / 5)
        height: (rootMainMenuId.height / 11)
        anchors.top: rootMainMenuId.top
        anchors.left: rootMainMenuId.left
        anchors.topMargin: 10
        anchors.leftMargin: 10
        Text{
            id: userTextId
            anchors.centerIn: userBubbleId
            text: "user"
            font.pointSize: 15
            color: "white"
            font.bold: true
        }
        HoverHandler{
            onHoveredChanged: {
                if(hovered){
                    userBubbleId.color = "dark grey"

                }
                else{
                    userBubbleId.color = "grey"
                }
            }
        }
    }
    Rectangle{
        id: userSpacerId
        border.color: "white"
        border.width: 3
        height: userBubbleId.height
        width: 3
        anchors.verticalCenter: userBubbleId.verticalCenter
        anchors.left: userBubbleId.right
        anchors.leftMargin: 35
    }

    Rectangle{
        id: closeMbirId
        border.color: "white"
        border.width: 3
        color: "grey"
        radius: 20
        height: userBubbleId.height
        width: (userBubbleId.width + 75)
        anchors.left: userSpacerId.right
        anchors.verticalCenter: userSpacerId.verticalCenter
        anchors.leftMargin: 35
        Text{
            id: closeMbirTextId
            anchors.centerIn: closeMbirId
            color: "white"
            font.pointSize: 15
            font.bold: true
            text: "Close Mbir"
        }
        MouseArea{
            id: closeMbirMouseId
            anchors.fill: closeMbirId
            onClicked: {
                Qt.quit()
            }
        }
        HoverHandler{
            onHoveredChanged: {
                if(hovered){
                    closeMbirId.color = "dark grey"
                }
                else{
                    closeMbirId.color = "grey"
                }
            }
        }
    }
    Rectangle{
        id: shutDownId
        border.color: "white"
        border.width: 3
        color: "grey"
        radius: 20
        height: closeMbirId.height
        width: closeMbirId.width
        anchors.left: closeMbirId.right
        anchors.verticalCenter: closeMbirId.verticalCenter
        anchors.leftMargin: 10
        Text{
            id: shutDownTextId
            anchors.centerIn: shutDownId
            text: "ShutDown"
            font.pointSize: 15
            font.bold: true
            color: "white"
        }
        HoverHandler{
            onHoveredChanged: {
                if(hovered){
                    shutDownId.color = "dark grey"
                }
                else{
                    shutDownId.color = "grey"
                }
            }
        }
    }
    Rectangle{
        id: verticalSpacerId
        border.color: "white"
        border.width: 3
        height: 3
        width: (rootMainMenuId.width - 20)
        anchors.horizontalCenter: rootMainMenuId.horizontalCenter
        anchors.top: userBubbleId.bottom
        anchors.topMargin: 10
    }
}
