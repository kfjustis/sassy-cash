import QtQuick 2.6

Rectangle {
    property alias mouseArea: mouseArea
    property alias textEdit: textEdit

    width: 800
    height: 600

    MouseArea {
        id: mouseArea
        width: 800
        height: 600
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
    }

    TextEdit {
        id: textEdit
        text: qsTr("Enter some text...")
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Rectangle {
            anchors.fill: parent
            anchors.margins: -10
            color: "transparent"
            border.width: 1
        }
    }
}
