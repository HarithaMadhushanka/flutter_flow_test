import 'package:flutter/material.dart';
import 'package:flutter_flow_test/common_components/custom_nav_bar/custom_navigation_bar.dart';
import 'package:flutter_flow_test/screens/home_screen/home_screen.dart';
import 'package:flutter_flow_test/screens/send_money/send_money_main_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> pageList = [];
  int currentTabIndex = 0;
  int _selectedPage = 0;

  @override
  void initState() {
    pageList.add(const HomeScreen());
    pageList.add(Container());
    pageList.add(const SendMoneyMainScreen());
    pageList.add(Container());
    pageList.add(Container());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pageList[_selectedPage],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomNavigationBar(
        currentIndex: 0,
        onTap: (int index) {
          _onItemTapped(_selectedPage);
        },
      ),
    );
  }

  Future<void> _onItemTapped(int index) async {
    setState(() {
      _selectedPage = index;
    });
  }
}
