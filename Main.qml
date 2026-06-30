import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

ApplicationWindow {
    property alias mainWindowVar: mainRoot
    id: mainRoot
    visible: true
    visibility: Window.FullScreen
    property string currentTime: ""
    function updateTime(){
        var date = new Date()
        currentTime = Qt.formatDateTime(date, "h:mm AP")
    }
    Timer{
        interval: 500
        running: true
        repeat: true
        onTriggered: mainRoot.updateTime()
    }
    Rectangle{
        id: containerId
        anchors.fill: parent
        Rectangle{
            id: isOpenId
            anchors.fill: parent
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    targetId.visible = false
                    targetId.setPageId.visible = false
                    targetId.setButtonId.color = "transparent"
                    targetId.setButtonId.border.color = "transparent"
                }
            }
        }

        Image{
            id: backgroundId
            anchors.fill: parent
            source: "qrc:/wall.png"
        }
        BottomMenuBar{
            id: sourceId
        }
        MainMenu{
            id: targetId
            visible: false
            anchors.bottom: sourceId.targetrect.top
            anchors.left: sourceId.targetrect.left
            anchors.bottomMargin: 10
        }
        SettingsPage{
            id: settingsLabelId
            visible: false
        }
    }
}