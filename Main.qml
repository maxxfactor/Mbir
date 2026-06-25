import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic

ApplicationWindow {
    id: mainRoot
    width: 800
    height: 800
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
            anchors.centerIn: parent
            source: "qrc:/wall.png"
        }
        BottomMenuBar{
            id: sourceId

        }
        MainMenu{
            id: targetId
            anchors.bottom: sourceId.targetrect.top
            anchors.left: sourceId.targetrect.left
            anchors.bottomMargin: 10
        }
    }
}