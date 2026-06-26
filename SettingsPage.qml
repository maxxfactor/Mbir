import QtQuick

Rectangle {
    id: rootSettingsId
    radius: 20
    opacity: .8
    width: (containerId.width / 4)
    height: (containerId.height / 2)
    anchors.horizontalCenter: containerId.horizontalCenter
    anchors.verticalCenter: containerId.verticalCenter
}
