import 'package:finance_app_ui/Pages/home_page.dart';
import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';

class TransactionDetail extends StatelessWidget {
  const TransactionDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=> HomePage(),
          ));},
            icon: Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 105, width: 105,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.greenAccent.withOpacity(0.15)
              ),
              child: Center(child: Image.asset('assets/img/check.png',height: 70,color: AppColor.greenAccent,)),
            ),
            SizedBox(height: 20,),
            const Text('Youtube Subscription Successful! ', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
            Text('Successfully Subscribed to Abcde for \$30',style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.w500),),
            SizedBox(height: 25,),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade400,width: 0.5)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Detail Transaction', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                  const SizedBox(height: 10,),
                  ListView.builder(
                    itemCount: dtList.length,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return Container(
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(dtList[index]['text'], style: TextStyle(color: Colors.grey.shade600,fontSize: 13),),
                              Text(dtList[index]['value'], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            ],
                          ),
                        );
                      }
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Status', style: TextStyle(color: Colors.grey.shade600,fontSize: 13),),
                        Container(
                          height: 35, width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: AppColor.greenAccent.withOpacity(0.2)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.check_rounded,color: AppColor.greenAccent,size: 20,),
                              Text('Success', style: TextStyle(color: AppColor.greenAccent,fontSize: 13,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Divider(color: Colors.grey.shade300,height: 0.4,),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Total', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                        const Text('\$30.05', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> dtList = [
  {
    'text': 'Transaction ID',
    'value': '2425 4267 4690',
  },
  {
    'text': 'Date',
    'value': '08:16  18 May 2024',
  },
  {
    'text': 'Type of Transaction',
    'value': 'Subscription',
  },
  {
    'text': 'Nominal',
    'value': '\$30',
  },
  {
    'text': 'Admin',
    'value': '\$0.5',
  },
  {
    'text': 'Recipient\'s number' ,
    'value': '+62 426 2623 3458',
  },
];
