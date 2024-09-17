import 'package:finance_app_ui/Pages/widgets/income_list.dart';
import 'package:finance_app_ui/Pages/widgets/peichart.dart';
import 'package:flutter/material.dart';

class IncomePage extends StatelessWidget {
  const IncomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            pieChart(),
            const Text('Income Breakdown',style: TextStyle(fontWeight: FontWeight.w500),),
            incomeList()
          ],
        ),
      ),
    );
  }
}


