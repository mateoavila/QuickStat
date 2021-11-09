import 'dart:collection';

import 'package:flutter/material.dart';
import '../player_list.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => HomeScreen();
}

class HomeScreen extends State<MyHomePage> {

  Map<String, String> myPlayers = Map();

  addToMyPlayers(String name) {
    print(myPlayers.length);
    myPlayers[name] = 'upcoming';
    print(name + " added");
    print(myPlayers.length);

  }
  @override
  void initState() {
    super.initState();
    print("keys: " + myPlayers.keys.toString());
  }

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
          children: <Widget>[
            const SizedBox(height: 15.0,),
            const Text('My Players',
                style: TextStyle(fontSize: 30, color: Colors.blueAccent)),
            const SizedBox(height: 15.0,),
            Expanded(
              child: ListView.builder(
                itemCount: myPlayers.length,
                itemBuilder: (BuildContext context,int index){
                  return ListTile(
                      leading: const Icon(Icons.sports_baseball),
                      trailing: Text(myPlayers.values.elementAt(index),
                        style: const TextStyle(
                            color: Colors.blue,fontSize: 15),),
                      title:Text(myPlayers.keys.elementAt(index))
                  );
                }
            ),
            )
          ],
        ),
      ),
    );
  }
}
