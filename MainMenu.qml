import QtQuick

Rectangle {
    property alias anchoredRect: rootMainMenuId
    id: rootMainMenuId
    width: (containerId.width / 5)
    height: (containerId.height / 2.5)
    radius: 20
    color: "grey"
    border.color: "white"
    border.width: 3
}
