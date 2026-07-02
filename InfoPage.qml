import QtQuick
import QtQuick.Effects

Rectangle {
    id: rootInfoId
    width: (mainWindowVar.width / 4)
    height: (mainWindowVar.height / 2.5)
    color: "#D9333333"
    border.color: "white"
    border.width: 3
    radius: 20
    x: (mainWindowVar.width / 2) - width / 2
    y: (mainWindowVar.height / 2) - height / 2
    Rectangle{
        id: infoHeaderId
        width: (rootInfoId.width - 6)
        height: 50
        color: "#80000000"
        topLeftRadius: 20
        topRightRadius: 20
        anchors.horizontalCenter: rootInfoId.horizontalCenter
        anchors.top: rootInfoId.top
        anchors.topMargin: 2
        DragHandler{
            target: null
            onCentroidChanged: {
                if(active){
                    rootInfoId.x += centroid.velocity.x * 0.001
                    rootInfoId.y += centroid.velocity.y * 0.001
                }
            }
        }
        Rectangle{
            id: setInfoCloseButtonId
            width: settingsLabelId.refClose.width
            height: setInfoCloseButtonId.width
            color: "orange"
            radius: 20
            anchors.right: infoHeaderId.right
            anchors.rightMargin: 8
            anchors.top: infoHeaderId.top
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
                    rootInfoId.visible = false
                }
            }
            HoverHandler{
                onHoveredChanged: {
                    if(hovered){
                        setInfoCloseButtonId.border.width = 3
                        setInfoCloseButtonId.border.color = "white"
                        setInfoCloseButtonId.color = "red"
                    }
                    else{
                        setInfoCloseButtonId.border.color = "transparent"
                        setInfoCloseButtonId.color = "orange"
                    }
                }
            }
        }
    }
    Image{
        id: logoDisplay
        source: "qrc:/logo_w_text.png"
        width: 350
        height: 350
        fillMode: Image.PreserveAspectFit
        visible: false
        anchors.centerIn: maskshape
    }
    Rectangle{
        id: maskshape
        anchors.horizontalCenter: rootInfoId.horizontalCenter
        anchors.top: infoHeaderId.bottom
        anchors.topMargin: 20
        width: 350
        height: 350
        radius: 200
        visible: false
        layer.enabled: true
    }
    MultiEffect{
        anchors.fill: logoDisplay
        source: logoDisplay
        maskEnabled: true
        maskSource: maskshape
        maskThresholdMin: 0.5
        maskThresholdMax: 1.0
    }
}
