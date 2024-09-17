import 'package:finance_app_ui/utils/color.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

Widget pieChart(){
  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Column(
        children: [
          Text('TOTAL INCOME',style: TextStyle(fontSize: 11,color: Colors.grey.shade600),),
          Text('\$20,173,00',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),)
        ],
      ),
      Container(
        height: 260,
        padding: EdgeInsets.symmetric(vertical: 45),
        child: PieChart(
            swapAnimationDuration: Duration(seconds: 4),
            swapAnimationCurve: Curves.easeInOutQuint,
            PieChartData(
                sectionsSpace: 0,
                startDegreeOffset: -45,
                sections: [
                  PieChartSectionData(
                    value: 50,
                    radius: 17,
                    showTitle: false,
                    color: AppColor.lightPurple,
                  ),
                  PieChartSectionData(
                    value: 17,
                    showTitle: false,
                    radius: 17,
                    color: AppColor.purple,
                  ),
                  PieChartSectionData(
                    value: 18,
                    showTitle: false,
                    radius: 17,
                    color: AppColor.pink,
                  ),
                  PieChartSectionData(
                    value: 15,
                    showTitle: false,
                    radius: 17,
                    color: AppColor.bgColor,
                  )
                ]
            )
        ),
      ),
    ],
  );
}