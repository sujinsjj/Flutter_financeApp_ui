import 'package:finance_app_ui/Pages/home_page.dart';
import 'package:finance_app_ui/Pages/statistic_page.dart';
import 'package:finance_app_ui/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List<Widget> _pages = [
    const HomePage(),
    const Text('Card'),
    const StatisticPage(),
    const Text('Profile'),
  ];

  int _selectedIndex = 0;
  void _onTappedItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomAppBar(
        height: 70,
        color: Colors.white,
        shadowColor: Colors.black12,
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomNavBarItem('home.svg', 'Home', 'home-fill.svg', 0),
            _bottomNavBarItem('card.svg', 'Card', 'card.svg', 1),
            InkWell(
              onTap: (){},
              borderRadius: BorderRadius.circular(25),
              child: Container(
                height: 45, width: 45,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.purple1
                ),
                child: Center(
                  child: SvgPicture.asset('assets/icon/scan.svg',
                    colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                    height: 22,
                  ),
                ),
              ),
            ),
            _bottomNavBarItem('statistic-board.svg', 'Stat', 'statistic-board-fill.svg', 2),
            _bottomNavBarItem('person.svg', 'Profile', 'person-fill.svg', 3),
          ],
        ),
      )
    );
  }

  Widget _bottomNavBarItem(String icon, String label, String activeIcon, int index){
    return InkWell(
      onTap: (){_onTappedItem(index);},
      borderRadius: BorderRadius.circular(30),
      child: SizedBox(
        height: 60,
        width: 60,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _selectedIndex == index ?
              SvgPicture.asset('assets/icon/$activeIcon',height: 24,)
              :SvgPicture.asset('assets/icon/$icon',height: 24,colorFilter: const ColorFilter.mode(Colors.black45, BlendMode.srcIn),),
              Text(label,style: TextStyle(color: _selectedIndex == index ?AppColor.purple1:Colors.black45,fontSize: 12),)
            ],
          ),
        ),
      ),
    );
  }
}


