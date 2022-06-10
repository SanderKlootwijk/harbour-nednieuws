import QtQuick 2.0
import Sailfish.Silica 1.0

ListItem {
    id: container
    contentHeight: Theme.itemSizeMedium

    Text {
        id: imageSource
        visible: false
        text: image
    }

    // Put contents in a 'box'
    Item {
        anchors {
            fill: parent
            margins: Theme.paddingMedium
        }

        Label {
            id: categoryLabel
            anchors {
                right: parent.right
                top: parent.top
            }

            font.pixelSize: Theme.fontSizeMedium / 1.2
            color: Theme.highlightColor

            text: {
                if (feedListModel.source === "https://feeds.feedburner.com/nosjournaal") {
                    "Algemeen nieuws"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nossportalgemeen") {
                    "Sportnieuws"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwsbinnenland") {
                    "Binnenland"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwsbuitenland") {
                    "Buitenland"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwspolitiek") {
                    "Politiek"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwseconomie") {
                    "Economie"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwsopmerkelijk") {
                    "Opmerkelijk"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwskoningshuis") {
                    "Koningshuis"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwscultuurenmedia") {
                    "Cultuur & Media"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosnieuwstechnologie") {
                    "Technologie"
                }
                else if (feedListModel.source === "https://feeds.feedburner.com/nosop3") {
                    "NOS op 3"
                }
            }
        }

        Image {
            id: containerImage
            width: parent.width
            height: width / 1.7
            anchors {
                top: categoryLabel.bottom
                topMargin: Theme.paddingMedium
                horizontalCenter: parent.horizontalCenter
            }

            source: image
        }

        Label {
            id: containerTitle
            width: parent.width
            anchors {
                top: containerImage.bottom
                left: parent.left
            }

            text: title

            font.pixelSize: Theme.fontSizeExtraSmall / 1.1
            wrapMode: Text.WordWrap
            truncationMode: TruncationMode.Fade
        }

        Label {
            id: containerDate
            width: parent.width
            anchors {
                top: containerTitle.bottom
                topMargin: Theme.paddingSmall
                left: parent.left
            }

            text: pubDate

            font.pixelSize: Theme.fontSizeExtraSmall / 1.5
            color: Theme.highlightColor
            wrapMode: Text.WordWrap
        }
    }
}
