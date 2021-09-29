import 'package:flutter/material.dart';

class MySettingsPage extends StatefulWidget {
  const MySettingsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySettingsPage> createState() => SettingsScreen();
}


class SettingsScreen extends State<MySettingsPage> {

  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'All';
    return  Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children:  <Widget>[
          Text('Settings',
              style: TextStyle(fontSize: 30, color: Colors.blueAccent)
          ),
          SizedBox(height: 20.0,),
          Text('notifiation Prefrences',
              style: TextStyle(fontSize: 20,)
          ),
          DropdownButton<String>(
            value: dropdownValue,
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
                dropdownValue = newValue!;
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
          SizedBox(height: 70.0,),
          Text('Viewing Prefrences',
              style: TextStyle(fontSize: 20,)
          ),

        ],),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }