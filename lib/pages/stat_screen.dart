import 'package:flutter/material.dart';
import 'package:batterup/stat_api_calls/stat_api.dart';

import '../player.dart';

class myStatPage extends StatelessWidget {
  myStatPage({Key? key, required this.name, required this.player})
      : super(key: key);
  String name;
  Player player;
  final String title = 'Stats';

  void initState() {
    initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
            const SizedBox(height: 15.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("Avg ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.avg,
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("OBP",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.obp,
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("SLG ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.slg,
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text("OPS",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text(player.ops,
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                ]),
            const SizedBox(height: 17.0),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text("RBI ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text("495 ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text("HR ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text("154",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text("BB ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text("225 ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      Text("xBH ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                      Text("344 ",
                          style: TextStyle(
                            fontSize: 25,
                          )),
                    ],
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
