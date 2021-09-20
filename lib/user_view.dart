import 'package:flutter/material.dart';

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

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context,int index) {
            Text('My Players', style: TextStyle(color: Colors.blue, fontSize: 25),);
            return ListTile(
                leading: const Icon(Icons.sports_baseball),
                trailing: const Text("at Bat",
                  style: TextStyle(color: Colors.blue, fontSize: 15),),
                title: Text("player $index")
            );
          }
      ),
    );
  }
}

class SearchScreen extends StatelessWidget{
  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          children: [
            const SizedBox(height: 10,),
            Column(
              children: const <Widget>[
              TextField(
                decoration: InputDecoration(
                 labelText: "Search",
                  labelStyle: TextStyle(fontSize: 20),
                  filled: true,
                ),
              ),
              ],
            ),
            const SizedBox(height: 40,),
            const Text(
              "Suggested Players",
              style: TextStyle(fontSize: 25, color: Colors.blueAccent),
            ),
          ],
      ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        ' Settings',
        style: TextStyle(color: Colors.blue, fontSize: 25),
        ),
    );
  }
}


/* this is jsut the list view
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: Icon(Icons.sports_baseball),
                trailing: Text("at Bat",
                  style: TextStyle(
                      color: Colors.blue,fontSize: 15),),
                title:Text("player $index")
            );
          }
      ),
    );
  }
}*/