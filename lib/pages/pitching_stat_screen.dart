import 'package:flutter/material.dart';
import 'package:quickstat/api_hitting_calls/hittingApi.dart';
import 'package:quickstat/pages/help_pitcher_screen.dart';

import '../hittter.dart';
import '../pitcher.dart';
import 'help_screen.dart';

// ignore: camel_case_types, must_be_immutable

class myPitchingStatPage extends StatelessWidget {
  myPitchingStatPage({Key? key, required this.name, required this.player})
      : super(key: key);
  String name;
  Pitcher player;
  final String title = 'Stats';

  void initState() {
    initState();
  }



  @override
  Widget build(BuildContext context) {

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
                      const Text("ERA",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.ERA,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("whip",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.whip,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("K/BB ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.kbb,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("babip",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.babip,
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
                      const Text("hr/9",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.hr9,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("h/9",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.h9,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("bb/9",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.bb9,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("K%",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.spct,
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
                      const Text("PIP",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.pip,
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
                      const Text("ip",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.ip,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("W%",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.wpct,
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
                      const Text("gidp",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.gidp,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("SV",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.sv,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("go/ao",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.go_ao,
                          style: const TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Text("g",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.g,
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
            MaterialPageRoute(builder: (context) => MyHelpPitcherPage(title: "Help")),
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
