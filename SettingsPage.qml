import QtQuick

Rectangle {
    id: rootSettingsId
    property alias refClose: setCloseButtonId
    radius: 20
    color: "#D9333333"
    border.color: "white"
    border.width: 3
    width: (containerId.width / 3)
    height: (containerId.height / 1.5)
    x: (mainWindowVar.width / 2) - width / 2
    y: (mainWindowVar.height / 2) - height / 2
    Rectangle{
        id: setHeaderId
        width:(rootSettingsId.width - 6)
        height: 50
        color: "#80000000"
        topLeftRadius: 20
        topRightRadius: 20
        anchors.horizontalCenter: rootSettingsId.horizontalCenter
        anchors.top: rootSettingsId.top
        anchors.topMargin: 2
        DragHandler{
            target: null
            onCentroidChanged: {
                if(active){
                    rootSettingsId.x += centroid.velocity.x * 0.001
                    rootSettingsId.y += centroid.velocity.y * 0.001
                }
            }
        }
        Rectangle{
            id: setCloseButtonId
            width: (rootSettingsId.width / 27)
            height: setCloseButtonId.width
            color: "orange"
            radius: 20
            anchors.right: setHeaderId.right
            anchors.rightMargin: 8
            anchors.top: setHeaderId.top
            anchors.topMargin: 8
            Text{
                anchors.centerIn: parent
                text: "X"
                font.bold: true
                font.pointSize: 10
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    rootSettingsId.visible = false
                }
            }
            HoverHandler{
                onHoveredChanged: {
                    if(hovered){
                        setCloseButtonId.border.width = 3
                        setCloseButtonId.border.color = "white"
                        setCloseButtonId.color = "red"
                    }
                    else{
                        setCloseButtonId.border.color = "transparent"
                        setCloseButtonId.color = "orange"
                    }
                }
            }
        }
        Rectangle{
            id: userBubbleId
            width: (rootSettingsId.width / 3)
            height: userBubbleId.width
            color: "transparent"
            border.width: 3
            border.color: "white"
            radius: 150
            anchors.horizontalCenter: setHeaderId.horizontalCenter
            anchors.top: setHeaderId.bottom
            anchors.topMargin: (setHeaderId.height / 2)
            Text{
                id: userTextId
                anchors.centerIn: parent
                text: "M B"
                font.bold: true
                color: "white"
                font.pointSize: 70
            }
        }
    }
}
