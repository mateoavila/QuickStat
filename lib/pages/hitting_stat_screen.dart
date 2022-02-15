import 'package:flutter/material.dart';
import 'package:quickstat/api_hitting_calls/hittingApi.dart';

import '../hittter.dart';
import 'help_screen.dart';

// ignore: camel_case_types, must_be_immutable

class myHittingStatPage extends StatelessWidget {
  myHittingStatPage({Key? key, required this.name, required this.player})
      : super(key: key);
  String name;
  Hitter player;
  final String title = 'Stats';

  void initState() {
    initState();
  }



  @override
  Widget build(BuildContext context) {
    double sopa = int.parse(player.so) / int.parse(player.tpa);
    return Scaffold(
      appBar: AppBar(
        title: Text(name + "'s " + title),
        backgroundColor: Color(0xff002D72),
        //automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10.0),
            Text(name,
                style: const TextStyle(
                  fontSize: 35,
                )),
            const SizedBox(height: 25.0),
            //ROW 1
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("Avg ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.avg,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("OBP",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.obp,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("SLG ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.slg,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("OPS",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.ops,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                ]),
            const SizedBox(height: 20.0),
            //ROW 2
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("RBI ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.rbi,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("HR ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.hr,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("BB ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.bb,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("xBH ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.xbh,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                ]),

            //ROW 4
            const SizedBox(height: 20.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("TB ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.tb,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("SB",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.sb,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("IBB",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.ibb,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("R",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.r,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                ]),
            //ROW 3
            const SizedBox(height: 20.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("SO/PA ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(sopa.toStringAsFixed(3),
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("BABIP",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.babip,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("PPA",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.ppa,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("GO/AO",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.goao,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHelpPage(title: "Help")),
          );
        },
        //tooltip: 'Increment',
        child: const Icon(
            Icons.help,
          size: 40,
        ),
      ),

    );
  }
}
