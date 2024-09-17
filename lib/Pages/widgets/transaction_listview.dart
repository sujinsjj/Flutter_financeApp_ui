import 'package:finance_app_ui/Pages/transaction_detail.dart';
import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

 final List<Map<String, dynamic>> _transactionItemList = [
  {
    'logo': 'youtube.svg',
    'name': 'Youtube',
    'amount': '\$30.00',
    'isReceived': false,
    'isPaid': true,
    'date': '16 May 2024',
    'description': 'Subscription Payment'
  },
   {
     'logo': 'stripe.svg',
     'name': 'Stripe',
     'amount': '+ \$1400.00',
     'isReceived': true,
     'isPaid': false,
     'date': '13 May 2024',
     'description': 'Monthly Salary'
   },
   {
     'logo': 'google-play.svg',
     'name': 'Google Play',
     'amount': '\$56.00',
     'isReceived': false,
     'isPaid': true,
     'date': '13 May 2024',
     'description': 'E-book Purchase'
   },
   {
     'logo': 'facebook.svg',
     'name': 'Facebook',
     'amount': '\$20.00',
     'isReceived': false,
     'isPaid': true,
     'date': '5 May 2024',
     'description': 'Subscription Payment'
   },
   {
     'logo': 'tiktok.svg',
     'name': 'TikTok',
     'amount': '\$5.00',
     'isReceived': false,
     'isPaid': true,
     'date': '4 May 2024',
     'description': 'Subscription Payment'
   },
];

Widget transactionListView(){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
    height: 380,
    child: ListView.builder(
        itemCount: _transactionItemList.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> TransactionDetail()));
              },
              child: Container(
                height: 65,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50, width: 50,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFECEDEF)
                          ),
                          child: Center(
                            child: SvgPicture.asset('assets/img/${_transactionItemList[index]['logo']}',height: 28,),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(_transactionItemList[index]['name'],
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                            Text(_transactionItemList[index]['description'],
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _transactionItemList[index]['amount'],
                          style: _transactionItemList[index]['isReceived'] == true
                              ?const TextStyle(
                              fontSize: 14,
                              color: AppColor.greenAccent,
                              fontWeight: FontWeight.w500
                          ): const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(_transactionItemList[index]['date'],
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
          );
        }),
  );
}