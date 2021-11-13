import 'package:flutter/material.dart';

class MyHelpPage extends StatefulWidget {
  const MyHelpPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHelpPage> createState() => _MyHelpPageState();
}

class _MyHelpPageState extends State<MyHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 5),
            const Text('Stat Definitions',
                style: TextStyle(fontSize: 30, color: Colors.blueAccent)),
            const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('Avg:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 24),
                      Flexible(
                        child: Text(
                            'Stands for average. \nThis stat shows the batting average of the player. \nThe formula is hits/at bats.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('OBP:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 20),
                      Flexible(
                        child: Text(
                            'Stands for on base percentage. \nThis stat shows the rate at which the player gets on base by either getting a hit of walking. \nThe formula is (hits + walks) / at bat.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('SLG:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 23),
                      Flexible(
                        child: Text(
                            'Stands for Slugging. \nThis stat shows the productivity of the player. \nThe formula is  (singles) + (2 x doubles) + (3 x triples) + (4 x Home Runs) / at bats.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('OPS:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 20),
                      Flexible(
                        child: Text(
                            'Stands for On Base plus Slugging. \nThis stat shows the players ability to get on base as well as hit for power. \nThe formula is OBP + SLG.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('RBI:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 30),
                      Flexible(
                        child: Text(
                            'Stands for Runs Batted In. \nThis stat shows the number of runs that have been scored as a result of the players at bat.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('HR:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 34),
                      Flexible(
                        child: Text(
                            'Stands for Home Run. \nwhen a player is able to touch every base without stopping and scores a run.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('BB:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 37),
                      Flexible(
                        child: Text(
                            'Stands for Base on Balls. \nwhen a player receives 4 balls in an at bat and is allowed to take first base.',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Text('xBH:',
                          style: TextStyle(
                            fontSize: 23,
                          )),
                      SizedBox(width: 23),
                      Flexible(
                        child: Text(
                            'Stands for extra base hits. \nwhen a player gets a hit that is either a double triple or home run',
                            style: TextStyle(
                              fontSize: 16,
                            )),
                      ),
                    ],
                  ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text('so/pa:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 7),
                Flexible(
                  child: Text(
                      'Stands for Strike outs per plate appearance. \nThis stat shows the Strike out percentage of the player  \nThe formula is strike outs / plate appearances.',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text('BABIP:',
                    style: TextStyle(
                      fontSize: 21,
                    )),
                SizedBox(width: 7),
                Flexible(
                  child: Text(
                      'Stands for batting average on balls in play. \nThis stat shows the batting average of the player excluding strikeouts and home runs \nThe formula is (Hits - Home runs) / (At bats - Home runs - strike outs + sacrifice flys).',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text('PPA:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 20),
                Flexible(
                  child: Text(
                      'Stands for pitches per plate appearance. \nThis stat shows disciplined a batter is at the plate ',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text('go/ao:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                      'Stands for Ground out per Air out. \nThis stat shows if a player hits the ball in the air or on thr ground more often \nThe formula is ground outs / air outs ',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
              ),
            ),
    );
  }
}
