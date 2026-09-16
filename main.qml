import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "TikTok Clone"
    color: "#000000"

    SwipeView {
        id: feedView
        anchors.fill: parent
        orientation: Qt.Vertical
        currentIndex: 0

        Repeater {
            model: 5

            Item {
                Rectangle {
                    anchors.fill: parent
                    color: "#111111"

                    Text {
                        anchors.centerIn: parent
                        text: "Видео #" + (index + 1)
                        color: "#ffffff"
                        font.pixelSize: 24
                        font.bold: true
                    }
                }

                Column {
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 12
                    anchors.bottomMargin: 80
                    spacing: 24

                    Rectangle {
                        width: 48
                        height: 48
                        radius: 24
                        color: "#ff0050"
                        Text {
                            anchors.centerIn: parent
                            text: "A"
                            color: "white"
                            font.bold: true
                            font.pixelSize: 20
                        }
                    }

                    Column {
                        spacing: 4
                        Text {
                            text: "❤️"
                            font.pixelSize: 32
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                        Text {
                            text: "1.2K"
                            color: "white"
                            font.pixelSize: 12
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    Column {
                        spacing: 4
                        Text {
                            text: "💬"
                            font.pixelSize: 32
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                        Text {
                            text: "345"
                            color: "white"
                            font.pixelSize: 12
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }

                    Column {
                        spacing: 4
                        Text {
                            text: "↗️"
                            font.pixelSize: 32
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                        Text {
                            text: "Share"
                            color: "white"
                            font.pixelSize: 12
                            anchors.horizontalCenter: parent.horizontalCenter
                        }
                    }
                }

                Column {
                    anchors.left: parent.left
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 16
                    anchors.bottomMargin: 24
                    spacing: 6

                    Text {
                        text: "@user" + (index + 1)
                        color: "white"
                        font.bold: true
                        font.pixelSize: 16
                    }

                    Text {
                        text: "Описание видео #" + (index + 1) + " #рек"
                        color: "white"
                        font.pixelSize: 14
                    }
                }
            }
        }
    }
}
