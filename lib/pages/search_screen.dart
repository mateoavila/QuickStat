import 'package:batterup/LocalDB.dart';
import 'package:batterup/pages/home_screen.dart';
import 'package:batterup/pages/stat_screen.dart';
import 'package:batterup/playeradd.dart';
import 'package:batterup/stat_api_calls/statapi.dart';

import '../api_calls/mlbapi.dart';
import 'package:flutter/material.dart';

import '../player.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySearchPage> createState() => SearchScreen();
}

class SearchScreen extends State<MySearchPage> {
  final myController = TextEditingController();
  bool selected = true;
  String name = "First name Last name";
  late Player player;

  List<PlayerAdd> suggestedPlayers = [
    PlayerAdd("Mookie betts"),
    PlayerAdd("Aaron Judge"),
    PlayerAdd("Mike Trout"),
    PlayerAdd("Fernando Tatis Jr."),
    PlayerAdd('Ronald Acuna Jr'),
    PlayerAdd('Shohei Ohtani'),
    PlayerAdd('Vladimir Gurrero Jr.'),
    PlayerAdd('Bo Bichette'),
    PlayerAdd('Javier Baez'),
    PlayerAdd('Jazz Chisholm Jr.'),
    PlayerAdd('Akill Badoo'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            // the searchBar
            Form(
              child: Container(
                width: 400,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "Search",
                      suffixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10)),
                  controller: myController,
                  onFieldSubmitted: (value) async {
                    name = await getNameApi(myController.text);
                    suggestedPlayers.clear();
                    suggestedPlayers.add(PlayerAdd(name));
                    setState(() {});
                  },
                  textInputAction: TextInputAction.search,
                ),
              ),
            ),

            const SizedBox(
              height: 20.0,
            ),
            const Text('Suggested Players',
                style: TextStyle(fontSize: 30, color: Colors.blueAccent)),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: suggestedPlayers.length,
                  itemBuilder: (context, index) {
                    if (suggestedPlayers[index].name == 'error') {
                      return const Text(
                          'error occurred: Type players full name or search new player',
                          style: TextStyle(
                            fontSize: 20,
                          ));
                    } else {
                      return ListTile(
                        leading: const Icon(Icons.sports_baseball),
                        title: Text(suggestedPlayers[index].name),
                        trailing: IconButton(
                          color: Colors.blue,
                          splashColor: Colors.blue,
                          icon: Icon(suggestedPlayers[index].isSelected
                              ? Icons.add_box_outlined
                              : Icons.add_box),
                          onPressed: () {
                            setState(() {
                              suggestedPlayers[index].isSelected =
                                  !suggestedPlayers[index].isSelected;
                              HomeScreen()
                                  .addToMyPlayers(suggestedPlayers[index].name);
                            });
                          },
                        ),
                        onTap: () async {
                          player =
                              await callStatApi(suggestedPlayers[index].name);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => myStatPage(
                                    name: suggestedPlayers[index].name,
                                    player: player)),
                          );
                        },
                      );
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
