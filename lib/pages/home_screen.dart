import 'package:batterup/pages/stat_screen.dart';
import 'package:batterup/stat_api_calls/statapi.dart';
import 'package:flutter/material.dart';

import '../player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => HomeScreen();
}

class HomeScreen extends State<MyHomePage> {
  static Map<String, String> myPlayers = {};
  late Player player;

  void addToMyPlayers(String name) {
    myPlayers[name] = 'upcoming';
    print(name + " added");
    print(myPlayers);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuickStat'),
        backgroundColor: Colors.blue.shade800,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 15.0,
            ),
            Text('My Players',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue.shade800,
                )),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: myPlayers.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      onDismissed: (direction) {
                        myPlayers.removeWhere((key, value) =>
                            key == myPlayers.keys.elementAt(index));
                      },
                      key: Key(myPlayers.keys.elementAt(index)),
                      child: ListTile(
                          leading: Icon(
                            Icons.sports_baseball,
                            color: Colors.blue.shade800,
                          ),
                          trailing: IconButton(
                            color: Colors.blue.shade800,
                            splashColor: Colors.blue.shade800,
                            icon: const Icon(Icons.arrow_forward_outlined),
                            onPressed: () async {
                              player = await callStatApi(
                                  myPlayers.keys.elementAt(index));
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => myStatPage(
                                        name: myPlayers.keys.elementAt(index),
                                        player: player)),
                              );
                            },
                          ),
                          title: Text(myPlayers.keys.elementAt(index))),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
