import QtQuick 2.4
import QtCharts 2.2

Item {
    width: 400
    height: 400
    ChartView {
         width: 400
         height: 300
         theme: ChartView.ChartThemeBrownSand
         antialiasing: true

         PieSeries {
             id: pieSeries
             PieSlice { label: "eaten"; value: 94.9 }
             PieSlice { label: "not yet eaten"; value: 5.1 }
         }
     }
}
