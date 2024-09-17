import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget balanceCard(){
  return Container(
    height: 150,
    margin: const EdgeInsets.symmetric(horizontal: 20),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(
            0.0,
            0.3,
          ),
          blurRadius: 2.0,
          spreadRadius: 1.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          offset: Offset(0.0, 0.0),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //BoxShadow
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('YOUR BALANCE', 
          style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.bold,
              fontSize: 12),
        ),
        Row(
          children: [
            const Text('\$17,002,090',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            const SizedBox(width: 5,),
            SvgPicture.asset('assets/icon/eye.svg',
              height: 14,
              colorFilter: const ColorFilter.mode(Colors.blueGrey, BlendMode.srcIn),)
          ],
        ),
        const SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _widget('arrow_up.svg', 'Transfer'),
            _widget('arrow_down.svg', 'Withdraw'),
            _widget('dollar.svg', 'Invest'),
            _widget('creditcard-add.svg', 'Top up')
          ],
        )
      ],
    ),
  );
}

Widget _widget(String icon, String text){
  return Column(
    children: [
      Container(
        height: 38, width: 38,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.purple
        ),
        child: Center(
          child: SvgPicture.asset('assets/icon/$icon',
            height: 20,
            colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ),
      Text(text, style: TextStyle(
          color: Colors.black45,
          fontWeight: FontWeight.w500,
          fontSize: 13),)
    ],
  );
}