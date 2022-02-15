import 'package:quickstat/api_calls/mlbapi.dart';
import 'package:quickstat/api_pitching_calls/pitchingApi.dart';
import 'package:quickstat/pages/hitting_stat_screen.dart';
import 'package:quickstat/api_hitting_calls/hittingApi.dart';
import 'package:flutter/material.dart';
import 'package:quickstat/pages/pitching_stat_screen.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';
import '../hittter.dart';
import '../pitcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => HomeScreen();
}

class HomeScreen extends State<MyHomePage> {
  static List<String> myPlayers = [];
  late Hitter player;
  static late SharedPreferences prefs;

  @override
  void initState() {
    initPrefs();
    print("init prefs done");
    super.initState();
  }

  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    if (_getList() == null) {
      myPlayers = ["Mookie Betts"];
      setState(() {});
    } else {
      myPlayers = _getList();
      setState(() {});
    }
  }

  static Future<bool> _saveList() async {
    return await prefs.setStringList("playerlist", myPlayers);
  }

  List<String> _getList() {
    return prefs.getStringList("playerlist");
  }

  static void addToMyPlayers(String name) {
    myPlayers.add(name);
    _saveList();
    print(name + " added");
    print(myPlayers);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuickStat'),
        backgroundColor: Color(0xff002D72),
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
            const Text('My Players',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff002D72),
                )),
            const SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: myPlayers.length,
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                  itemBuilder: (BuildContext context, int index) {
                    return Dismissible(
                      confirmDismiss: (DismissDirection direction) async {
                        return await showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text("Confirm"),
                              content: Text(
                                  "Are you sure you wish to remove ${myPlayers[index]}"),
                              actions: <Widget>[
                                FlatButton(
                                    onPressed: () {
                                      Navigator.of(context).pop(true);
                                      myPlayers.remove(myPlayers[index]);
                                      _saveList();
                                      setState(() {});
                                    },
                                    child: const Text("DELETE")),
                                FlatButton(
                                  onPressed: () =>
                                      Navigator.of(context).pop(false),
                                  child: const Text("CANCEL"),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      key: Key(myPlayers[index]),
                      child: ListTile(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(17)),
                          tileColor: Color(0xff002D72).withOpacity(0.05),
                          leading: const Icon(
                            Icons.sports_baseball,
                            color: Color(0xffD50032),
                          ),
                          trailing: IconButton(
                            color: const Color(0xff002D72),
                            splashColor: const Color(0xff002D72),
                            icon: const Icon(Icons.arrow_forward_outlined),
                            onPressed: () async {
                              String findPosition =
                                  await getPositionApi(myPlayers[index]);
                              int position = int.parse(findPosition);
                              //1 is a pitcher every one else is a batter
                              if (position == 1) {
                                Pitcher pitcher =
                                    await callPitchingApi(myPlayers[index]);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => myPitchingStatPage(
                                          name: myPlayers[index],
                                          player: pitcher)),
                                );
                              } else {
                                player = await callHittingApi(myPlayers[index]);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => myHittingStatPage(
                                          name: myPlayers[index],
                                          player: player)),
                                );
                              }
                              ;
                            },
                          ),
                          title: Text(myPlayers[index])),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
