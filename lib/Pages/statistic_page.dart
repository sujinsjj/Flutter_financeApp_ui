import 'package:finance_app_ui/Pages/income_page.dart';
import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  const StatisticPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_outlined)),
          title: Text('Statistic'),
          titleSpacing: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                height: 40,
                width: 105,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade500)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('May 2024', style: TextStyle(color: Colors.grey.shade700),),
                    Icon(Icons.keyboard_arrow_down_rounded, color: Colors.grey.shade700,)
                  ],
                ),
              ),
            )
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColor.purple,
              labelColor: Colors.black87,
              unselectedLabelStyle: TextStyle(color: Colors.grey.shade600, fontWeight: FontWeight.w400),
              tabs: [
                Tab(
                  child: Text('Income'),
                ),
                Tab(
                  child: Text('Outcome'),
                ),
              ]
          ),
        ),
        body: TabBarView(
            children: [
              IncomePage(),
              Text('Outcome'),
            ]
        ),
      ),
    );
  }
}
