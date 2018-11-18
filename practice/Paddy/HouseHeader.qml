import QtQuick 2.0
import QtQuick.Controls 2.4

Item {
    id: base
    signal newRoom();

    width: mainWindow.width
    Rectangle{
        width: mainWindow.width
        height: newRoomButton.height + newRoomButton.anchors.topMargin + newRoomButton.anchors.bottomMargin

        color: "white"

        Text{
            anchors.centerIn: parent;
            text: qsTr("Welcome to your House")
        }

        RoundButton{
            id: newRoomButton

            text: "+"
            font.pixelSize: 22

            anchors.topMargin: 5
            anchors.bottomMargin: 5
            anchors.rightMargin: 5
            anchors.top: parent.top
            anchors.right: parent.right
            onClicked: base.newRoom()
        }
    }
}
