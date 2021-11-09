import 'package:flutter/material.dart';
import 'login_page.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySettingsPage> createState() => SettingsScreen();
}


class SettingsScreen extends State<MySettingsPage> {

  String NotificationDropdown = 'All';
  String ViewingDropdown = 'Light';

  void _toLogin() {
    //how to move to a new screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: const Text('Settings'),
          automaticallyImplyLeading: false,
    ),
      body:  Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children:  <Widget>[
          // Text('Settings',
          //     style: TextStyle(fontSize: 30, color: Colors.blueAccent)
          // ),
          SizedBox(height: 20.0,),
          Text('notifiation Prefrences',
              style: TextStyle(fontSize: 20,)
          ),
          DropdownButton<String>(
            value: NotificationDropdown,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 20,
            elevation: 16,
            style: const TextStyle(color: Colors.blueAccent),
            underline: Container(
              height: 2,
              color: Colors.blueAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                NotificationDropdown = newValue!;
              });
            },
            items: <String>['All',
              'Hits Only',
            'Home Runs Only',
            'none']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: TextStyle(fontSize: 20,)),
              );
            }).toList(),
          ),
          SizedBox(height: 30.0,),
          Text('Viewing Prefrences',
              style: TextStyle(fontSize: 20,)
          ),
          DropdownButton<String>(
            value: ViewingDropdown,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 20,
            elevation: 16,
            style: const TextStyle(color: Colors.blueAccent),
            underline: Container(
              height: 2,
              color: Colors.blueAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                ViewingDropdown = newValue!;
              });
            },
            items: <String>['Light',
              'Dark',]
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value, style: TextStyle(fontSize: 20,)),
              );
            }).toList(),
          ),
          SizedBox(height: 300.0,),
          ButtonTheme(
            height: 30,
            minWidth: 20,
            disabledColor: Colors.blueAccent,
            child:  RaisedButton(
                disabledElevation: 4.0,
                onPressed: _toLogin,
                // do things here to check in firebase
                child: Text(
                  'Log out',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                )),
          ),
        ],
      ),
    ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }