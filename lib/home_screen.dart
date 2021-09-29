import 'package:flutter/material.dart';
import 'player_list.dart';
import 'login_page.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => HomeScreen();
}


class HomeScreen extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
       appBar: AppBar(
       title: const Text('BatterUp'),
         automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children:  <Widget>[
          SizedBox(height: 15.0,),
        Text('My Players',
            style: TextStyle(fontSize: 30, color: Colors.blueAccent)
        ),
          SizedBox(height: 15.0,),
        Expanded(
          child: PlayerList(),
        )
      ],),
    ),
    );
  }
}
