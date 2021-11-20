import 'package:quickstat/LocalDB.dart';
import 'package:quickstat/pages/home_screen.dart';
import 'package:quickstat/pages/stat_screen.dart';
import 'package:quickstat/playeradd.dart';
import 'package:quickstat/stat_api_calls/statapi.dart';
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
    PlayerAdd("Mookie Betts"),
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
        backgroundColor: Color(0xff002D72),
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
                    border: Border.all(width: 1, color: Color(0xff002D72)),
                    borderRadius: BorderRadius.circular(25)
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "search",
                      suffixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20)),
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
            Text('Suggested Players',
                style: TextStyle(fontSize: 30, color: Color(0xff002D72))),
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
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white, width: 3),
                            borderRadius: BorderRadius.circular(15)),
                        tileColor: Color(0xff002D72).withOpacity(0.05),
                        leading: const Icon(Icons.sports_baseball,
                            color: Color(0xffD50032)),
                        title: Text(suggestedPlayers[index].name),
                        trailing: IconButton(
                          color: Color(0xff002D72),
                          splashColor: Color(0xff002D72),
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
