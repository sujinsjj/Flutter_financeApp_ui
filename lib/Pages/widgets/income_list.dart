import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';

Widget incomeList(){
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Column(
      children: [
        list('Monthly Salary', '10,086,50', 50, AppColor.lightPurple,true),
        Divider(height: 0.4, color: Colors.grey.shade200,),
        list('Passive Income', '3,631,14', 18, AppColor.pink,true),
        Divider(height: 0.4, color: Colors.grey.shade200,),
        list('Monthly Salary', '3,429,41', 17, AppColor.purple,false),
        Divider(height: 0.4, color: Colors.grey.shade200,),
        list('Monthly Salary', '3,025,95', 15, AppColor.bgColor,false),
      ],
    ),
  );
}

Widget list(String text, String amount, double percent, Color color, bool tColor){
  return SizedBox(
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 12),),
        Text('\$$amount', style: TextStyle(fontSize: 12),),
        Container(
          height: 25, width: 50,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(child: Text('$percent%',
            style: TextStyle(fontSize: 12 , color: tColor == true?Colors.black87:Colors.white),)),
        )
      ],
    ),
  );
}