import QtQuick
import QtQuick.Controls

Column {
       spacing: 20
       anchors.centerIn: parent

       Row {
           CheckBox {
               id: allChildrenChecked
               text: qsTr("All Checked")
           }

           CheckBox {
               id: partlyChildrenChecked
               text: qsTr("Partly Checked")
           }
       }

       CheckBox {
           text: qsTr("Result")
           tristate: true
           checkState: allChildrenChecked.checked ? Qt.Checked :
                       partlyChildrenChecked.checked ? Qt.PartiallyChecked : Qt.Unchecked

           nextCheckState: function() {
               if (checkState === Qt.Checked)
                   return Qt.Unchecked
               else
                   return Qt.Checked
           }
       }
   }
