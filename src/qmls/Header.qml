import QtQuick 2.0

import "../qmls/widgets"

Item {
    id: root
    width: 100
    height: 70

    property alias userNickname: nickname.text
    property alias userAvatarUrl: avatar.source
    property alias canGoBack: go_back_button.enabled
    property alias canGoForward: go_forward_button.enabled

    signal goBack()
    signal goForward()
    signal login()

    Rectangle {
        anchors.fill: parent
        color: "red"
    }

    Rectangle {
        anchors.fill: parent
        color: Qt.rgba(0, 0, 0, 0.1)
    }

    Text {
        id: title_text
        color: "white"
        text: "网易云音乐"
        font.pixelSize: 24

        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.verticalCenter: parent.verticalCenter
    }

    Row {
        anchors.left: title_text.right
        anchors.leftMargin: 80
        anchors.verticalCenter: parent.verticalCenter
        spacing: -1

        HTImageButton {
            id: go_back_button
            enabled: false
            width: 28
            height: 28
            normalImage: "qrc:/images/left_arrow_normal.png"
            hoverPressedImage: "qrc:/images/left_arrow_hover.png"
            inactiveImage: "qrc:/images/left_arrow_inactive.png"

            onClicked: root.goBack()
        }
        HTImageButton {
            id: go_forward_button
            enabled: false
            width: 28
            height: 28
            normalImage: "qrc:/images/right_arrow_normal.png"
            hoverPressedImage: "qrc:/images/right_arrow_hover.png"
            inactiveImage: "qrc:/images/right_arrow_inactive.png"

            onClicked: root.goForward()
        }
    }

    HTTextButton {
        text: "登录"
        visible: !root.userNickname
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter

        onClicked: root.login()
    }

    Row {
        visible: root.userNickname
        height: avatar.height
        spacing: 5
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter

        Image {
            id: avatar
            width: 32
            height: 32
            smooth: true
        }

        Text {
            id: nickname
            font.pixelSize: 16
            color: "white"

            anchors.verticalCenter: parent.verticalCenter
        }
    }
}

