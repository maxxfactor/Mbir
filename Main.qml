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
        currentTime = Qt.formatDateTime(date, "hh:mm AP")
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
        Image{
            id: backgroundId
            anchors.fill: parent
            source: "qrc:/2kwall.jpg"
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
        }
    }
}