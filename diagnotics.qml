import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import qt.name.backend 1.0
Window {
    visible: true
    width: 900
    height: 630
    id: main_window
    title: qsTr("Diagnotics")

    BackEnd
    {
        id: backend
    }
    RowLayout
    {
        anchors.fill: parent
        spacing: 20
        Rectangle
        {
            id: left_rectange
            Layout.fillWidth: true
            Layout.minimumWidth: parent.width * 0.33
            Layout.maximumWidth: parent.width * 0.33
            Layout.minimumHeight: parent.height
            color: 'red'
            Image{
                source: "image/main_left.png"
                anchors.fill: parent
            }
        }
        Popup {
               id: popup
               width: 540
               height: 220
               modal: true
               focus: true
               anchors.centerIn: parent
               background: Rectangle{
                   anchors.fill: parent
                   radius:10
               }

               Text{
                   text: "Choose an Option"
                   x: 20
                   y: 7
                   font.pixelSize: 16
               }
               CloseButton{
                   x: 500
                   y:5
                   onClicked: popup.close()
               }

               RowLayout
               {
                   spacing: 20
                   y:50
                   x:30
                    OptionButton{
                        width:130
                        height:110
                        title:"Demo Mode"
                        mark:"image/option_dm.png"
                        onClicked:   {
                            var component = Qt.createComponent("CloseButton.qml");
                            var window = component.createObject(this);

                        }

                    }
                    OptionButton{
                        width:130
                        height:110
                        title:"Direct Connect"
                        mark:"image/option_dc.png";

                    }
                    OptionButton{
                        width:130
                        height:110
                        title:"Remote Control"
                        mark:"image/option_dc.png";

                    }
               }

               closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
        }
        Rectangle
        {
            id: right_rectangle
            Layout.minimumHeight: parent.height
            Layout.minimumWidth: parent.width - left_rectange.width-20
            color:'white'

            ColumnLayout
            {
                Text
                {
                    color:'#444444'
                    x: 20
                    y:50
                    font.pixelSize: 22
                    width: parent.width

                    text: "What would you like to do?"

                }
                Grid
                {



                    id: main_buttons
                    x: 4; anchors.bottom: main_window.bottom; anchors.bottomMargin: 4
                    columns: 4; spacing: 5


                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Annotate Data" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_ad.png";  }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Vechicle Diag" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_vd.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Launch Evosim" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_le.png"; onClicked: popup.open()}

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Control Center" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_cce.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Logs & Graphics" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_lg.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Console" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_ks.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Test a module" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_tm.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Live Camera" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_lc.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Footage Archive" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_fa.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"???" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_cc.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Route Manager" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_rm.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Kar-go Config" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_kc.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Carla Simulator" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_cs.png"; onClicked: hello_text.color = cellColor }

                    MainButton { width: (right_rectangle.width -20)/4; height: width*0.8;  title:"Sys Interface" ;
                        subtitle : "cadalogger cpp" ; mark:"image/main_kc.png"; onClicked: hello_text.color = cellColor }



                }
            }




        }

    }




}
