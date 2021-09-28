import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget{
  const SettingsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          SizedBox(height: 70.0,),
          Text('Viewing Prefrences',
              style: TextStyle(fontSize: 20,)
          ),

        ],),
    );
  }
}