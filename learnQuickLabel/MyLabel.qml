import QtQuick
import QtQuick.Controls

Column {
      spacing: 20
      anchors.centerIn: parent

      Label {
          text: qsTr("Label")
      }

      Label {
          text: qsTr("Styled Label")
          color: "#21be2b"
          font.pointSize: 20
          topInset: -2
          leftInset: -2
          rightInset: -6
          bottomInset: -6
          background: Rectangle {
              color: "lightgrey"
          }
      }
  }
