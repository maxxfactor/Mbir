import QtQuick

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
}
