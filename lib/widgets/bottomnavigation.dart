import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skill_test/task_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    taskScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search,),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.emergency_recording_rounded,),
          label: 'Record',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.save_rounded,),
          label: 'Save',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,),
          label: 'Setting',

        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFF042E2B),
      unselectedItemColor: Color(0xffb4c1c0),
      showUnselectedLabels: true,
      backgroundColor: Colors.red,
      unselectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontFamily: 'inter',
          fontWeight: FontWeight.w500,
          color: Color(0xffb4c1c0)),
      onTap: _onItemTapped,
    );
  }
}
