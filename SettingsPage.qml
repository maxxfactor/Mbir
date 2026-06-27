import QtQuick

Rectangle {
    id: rootSettingsId
    radius: 20
    color: "#D9333333"
    border.color: "white"
    border.width: 3
    width: (containerId.width / 4)
    height: (containerId.height / 2)
    anchors.horizontalCenter: containerId.horizontalCenter
    anchors.verticalCenter: containerId.verticalCenter
}
