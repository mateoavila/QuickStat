import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'player_list.dart';
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

  static const List<Widget> _widgetOptions = <Widget>[
    //the HOME screen index 0
    HomeScreen(),
    //the SEARCH Screen index 1
    SearchScreen(),
    // the SETTINGS Screen index 2
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('BatterUp'),
       ),
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
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}



