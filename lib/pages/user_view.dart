import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../player_list.dart';
import 'search_screen.dart';
import 'home_screen.dart';
import 'settings_screen.dart';

class MyUserPage extends StatefulWidget {
  const MyUserPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyUserPage> createState() => _MyUserPageState();
}

class _MyUserPageState extends State<MyUserPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    //the HOME screen index 0
    MyHomePage(title: 'home'),
    //the SEARCH Screen index 1
    MySearchPage(title: 'search'),
    // the SETTINGS Screen index 2
    MySettingsPage(
      title: 'settings',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff002D72),

        onTap: _onItemTapped,
      ),
    );
  }
}
