import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';

Widget popUpMessage(){
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    padding: const EdgeInsets.all(10),
    height: 65,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: AppColor.purple1.withOpacity(0.1)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 40, width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.purple.withOpacity(0.6),
                image: const DecorationImage(
                  fit: BoxFit.contain,
                    image: AssetImage('assets/img/agreement.png')
                )
              ),
            ),
            const SizedBox(width: 10,),
            const SizedBox(
              width: 200,
              child: Text.rich(
                style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w500),
                TextSpan(
                    children: [
                      TextSpan(text: 'Let\'s check your ',),
                      TextSpan(
                          text: 'Financial Insght ',
                          style: TextStyle(color: Colors.black87)
                      ),
                      TextSpan(text: 'for the month of June!'),
                    ]
                ),
              ),
            )
          ],
        ),
        const Icon(Icons.arrow_forward_ios_sharp,size: 12,)
      ],
    ),
  );
}