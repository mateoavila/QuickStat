import 'package:quickstat/LocalDB.dart';
import 'package:quickstat/api_pitching_calls/pitchingApi.dart';
import 'package:quickstat/pages/home_screen.dart';
import 'package:quickstat/pages/hitting_stat_screen.dart';
import 'package:quickstat/pages/pitching_stat_screen.dart';
import 'package:quickstat/playeradd.dart';
import 'package:quickstat/api_hitting_calls/hittingApi.dart';
import '../api_calls/mlbapi.dart';
import 'package:flutter/material.dart';
import '../hittter.dart';
import '../pitcher.dart';

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
  late Hitter player;

  List<PlayerAdd> suggestedPlayers = [
    PlayerAdd("Mookie Betts"),
    PlayerAdd('Shohei Ohtani'),
    PlayerAdd("Aaron Judge"),
    PlayerAdd("Mike Trout"),
    PlayerAdd("Fernando Tatis Jr."),
    PlayerAdd('Ronald Acuna Jr'),
    PlayerAdd('Bryce Harper'),
    PlayerAdd('Vladimir Guerrero Jr.'),
    PlayerAdd('Bo Bichette'),
    PlayerAdd('Jazz Chisholm Jr.'),
    PlayerAdd('Akil Baddoo'),
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
                    borderRadius: BorderRadius.circular(25)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: "",
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(20)),
                  controller: myController,
                  onFieldSubmitted: (value) async {
                    try{
                      name = await getNameApi(value);
                      suggestedPlayers.clear();
                      suggestedPlayers.add(PlayerAdd(name));
                      setState(() {});
                    }catch(e){
                      suggestedPlayers.clear();
                      // 2 options
                      // 1) return a list and replace suggested players
                      // 2) clear the list and loop through and add to SP
                      getListOfNameApi(value);
                    }

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
                          'error occurred: \nDo not include space at the end of the name. \nType players full name or search new player',
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
                              if (HomeScreen.myPlayers
                                  .contains(suggestedPlayers[index].name)) {
                                print('already exists');
                              } else {
                                HomeScreen.addToMyPlayers(
                                    suggestedPlayers[index].name);
                              }
                            });
                          },
                        ),
                        onTap: () async {
                          String findPosition = await getPositionApi(
                              suggestedPlayers[index].name);
                          int position = int.parse(findPosition);

                          if (position == 1) {
                            Pitcher pitcher = await callPitchingApi(suggestedPlayers[index].name);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => myPitchingStatPage(
                                      name: suggestedPlayers[index].name,
                                      player: pitcher)),
                            );
                          } else {
                            player = await callHittingApi(
                                suggestedPlayers[index].name);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => myHittingStatPage(
                                      name: suggestedPlayers[index].name,
                                      player: player)),
                            );
                          }
                          ;
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
