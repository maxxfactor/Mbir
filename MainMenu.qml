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
        color: "transparent"
        radius: 20
        width: (rootMainMenuId.width / 5)
        height: (rootMainMenuId.height / 11)
        anchors.top: rootMainMenuId.top
        anchors.left: rootMainMenuId.left
        anchors.topMargin: 10
        anchors.leftMargin: 15
        Text{
            id: userTextId
            anchors.centerIn: userBubbleId
            text: "Mbir User"
            font.pointSize: 15
            color: "white"
            font.bold: true
        }
        HoverHandler{
            onHoveredChanged: {
                if(hovered){
                    userBubbleId.color = "#ff333333"
                    userBubbleId.border.width = 2
                    userBubbleId.border.color = "red"

                }
                else{
                    userBubbleId.color = "transparent"
                    userBubbleId.border.color = "transparent"
                }
            }
        }
    }

    Rectangle{
        id: closeMbirId
        color: "transparent"
        radius: 20
        height: userBubbleId.height
        width: (userBubbleId.width + 75)
        anchors.left: userBubbleId.right
        anchors.verticalCenter: userBubbleId.verticalCenter
        anchors.leftMargin: 70
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
                    closeMbirId.color = "#ff333333"
                    closeMbirId.border.width = 2
                    closeMbirId.border.color = "red"
                }
                else{
                    closeMbirId.color = "transparent"
                    closeMbirId.border.color = "transparent"
                }
            }
        }
    }
    Rectangle{
        id: shutDownId
        color: "transparent"
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
                    shutDownId.color = "#ff333333"
                    shutDownId.border.width = 2
                    shutDownId.border.color = "red"
                }
                else{
                    shutDownId.color = "transparent"
                    shutDownId.border.color = "transparent"
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
    Rectangle{
        id: stackSpacerId
        border.color: "white"
        border.width: 3
        height: rootMainMenuId.height
        width: 3
        anchors.left: settingsStackId.right
        anchors.leftMargin: 10
        anchors.verticalCenter: rootMainMenuId.verticalCenter
    }

    Rectangle{
        id: settingsStackId
        height: (rootMainMenuId.height / 10)
        width: (rootMainMenuId.width / 5)
        color: "transparent"
        radius: 20
        anchors.left: rootMainMenuId.left
        anchors.leftMargin: 20
        anchors.top: verticalSpacerId.bottom
        anchors.topMargin: 20
        Text{
            id: settingsStackTextId
            text: "System"
            anchors.centerIn: settingsStackId
            font.pointSize: 13
            font.bold: true
            color: "white"
        }
        HoverHandler{
            onHoveredChanged: {
                if(hovered){
                    settingsStackId.color = "#ff333333"
                    settingsStackId.border.width = 2
                    settingsStackId.border.color = "red"
                }
                else{
                    settingsStackId.color = "transparent"
                    settingsStackId.border.color = "transparent"
                }
            }
        }
    }
    Rectangle{
        id: stackSettingsPageId
        color: "transparent"
        anchors.left: stackSpacerId.right
        anchors.leftMargin: 25
        anchors.top: verticalSpacerId.bottom
        anchors.topMargin: 25
        width: (rootMainMenuId.width / 1.5)
        height: (rootMainMenuId.height / 1.25)
        Rectangle{
            id: systemSettingsButtonId
            width: stackSettingsPageId.width
            height: (stackSettingsPageId.height / 10)
            color: "transparent"
            radius: 20
            Text{
                id:systemSettingsButtonTextId
                anchors.centerIn: systemSettingsButtonId
                text: "System Settings"
                font.pointSize: 13
                font.bold: true
                color: "white"
            }
            HoverHandler{
                onHoveredChanged: {
                    if(hovered){
                        systemSettingsButtonId.color = "#ff333333"
                        systemSettingsButtonId.border.width = 2
                        systemSettingsButtonId.border.color = "red"
                    }
                    else{
                        systemSettingsButtonId.color = "transparent"
                        systemSettingsButtonId.border.color = "transparent"
                    }
                }
            }
        }
    }
}
