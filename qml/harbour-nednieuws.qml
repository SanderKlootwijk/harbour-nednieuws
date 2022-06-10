import QtQuick 2.0
import QtQuick.XmlListModel 2.0
import Sailfish.Silica 1.0
import "pages"

ApplicationWindow
{
    initialPage: Component { FirstPage { } }
    cover: Qt.resolvedUrl("cover/CoverPage.qml")
    allowedOrientations: defaultAllowedOrientations

    XmlListModel {
        id: feedListModel
        source: "http://feeds.nos.nl/nosnieuwsalgemeen"
        query: "/rss/channel/item"

        namespaceDeclarations: "declare namespace dc='http://purl.org/dc/elements/1.1/'; declare namespace content='http://purl.org/rss/1.0/modules/content/';"

        XmlRole { name: "title"; query: "title/string()"; }
        XmlRole { name: "link"; query: "link/string()";}
        XmlRole { name: "pubDate"; query: "pubDate/string()"; }
        XmlRole { name: "description"; query: "description/string()"; }
        XmlRole { name: "content"; query: "description/string()"; }
        XmlRole { name: "image"; query: "enclosure/@url/string()"; }
    }
}
