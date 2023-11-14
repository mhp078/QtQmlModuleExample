import QtQuick
import QtQuick.Window

import "MyModule"

Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MyGreenRec
    {
        x: 0
        y: 0
    }

    MyRedRec
    {
        x: 200
        y: 200
    }
}
