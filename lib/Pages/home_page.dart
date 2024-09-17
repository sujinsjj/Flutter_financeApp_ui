import 'package:finance_app_ui/Pages/widgets/balance_card.dart';
import 'package:finance_app_ui/Pages/widgets/pop_up_message.dart';
import 'package:finance_app_ui/Pages/widgets/transaction_listview.dart';
import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(85),
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 15),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColor.bgColor,AppColor.bgColor1],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40, width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img/cat.jfif')
                        )
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Hello Gaelrys!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text('Welcome back',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset('assets/icon/bell.png',color: Colors.white,height: 22,),
                    Positioned(
                        right: 3,
                        top: 2,
                        child: Container(
                          height: 6, width: 6,
                          decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),
                        )
                    )
                  ],
                )
              ],
            ),
          )
      ),
      body: Stack(
        children: [
          Container(
            height: 180,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColor.bgColor,AppColor.bgColor1],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight
              )
            ),
          ),
          ListView(
            children: [
              balanceCard(),
              const SizedBox(height: 20,),
              popUpMessage(),
              const SizedBox(height: 25,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text('Recent Transactions', style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
              ),
              transactionListView()
            ],
          )
        ],
      ),
    );
  }
}
