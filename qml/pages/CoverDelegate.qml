import QtQuick 2.0
import Sailfish.Silica 1.0

ListItem {
    id: container
    contentHeight: Theme.itemSizeHuge

    Text {
        id: imageSource
        visible: false
        text: image
    }

    // Put contents in a 'box'
    Item {
        anchors {
            fill: parent
            margins: Theme.paddingLarge
        }

        Image {
            id: containerImage
            width: height * 1.7
            height: parent.height
            anchors {
                top: parent.top
                right: parent.right
            }

            source: image
        }

        Label {
            id: containerTitle
            width: parent.width - containerImage.width - Theme.paddingLarge
            anchors {
                left: parent.left
            }

            text: title
            font.pixelSize: Theme.fontSizeExtraSmall * 1.1
            wrapMode: Text.WordWrap
            truncationMode: TruncationMode.Fade
        }
    }

    onClicked: {
        //first scroll to top
        columnFlickable.scrollToTop()
        //then add new information
        articleTitle.text = title
        articleDate.text = pubDate
        articleImage.source = image
        articleContent.text = content + ' <a href="' + link + '"><font color="' + Theme.highlightColor + '">Open dit artikel in uw browser</font></a>'
        pageStack.push(articlePage)
    }
}
