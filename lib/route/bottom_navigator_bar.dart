// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:woka5_app/screens/home.dart';
import 'package:woka5_app/screens/jobs.dart';
import 'package:woka5_app/screens/messages.dart';
import 'package:woka5_app/screens/profile.dart';
import 'package:woka5_app/widgets/custom_color.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({Key? key}) : super(key: key);

  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _screens = <Widget>[
      Home(),
      JobsPage(),
      MessagePage(),
      ProfilePage(),
    ];
    return ScreenUtilInit(
      builder: () => Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          unselectedFontSize: 18,
          fixedColor: black,
          iconSize: 30,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.explore_sharp,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work_sharp),
              label: 'Job',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_search_rounded),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
