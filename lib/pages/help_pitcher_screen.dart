import 'package:flutter/material.dart';

class MyHelpPitcherPage extends StatefulWidget {
  const MyHelpPitcherPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHelpPitcherPage> createState() => _MyHelpPitcherPageState();
}

class _MyHelpPitcherPageState extends State<MyHelpPitcherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color(0xff002D72),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 5),
            const Text('Stat Definitions',
                style: TextStyle(fontSize: 30, color: Color(0xff002D72))),
            const SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Text('ERA:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 23),
                Flexible(
                  child: Text(
                      'Stands for earned run average. \nThis stat shows the average number of runs allowed by a pitcher if they were to pitch 9 innings. \nThe formula is (9 * earned runs)/innings pitched.',
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
                Text('whip:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 15),
                Flexible(
                  child: Text(
                      'Stands for walks hits per inning pitched. \nThis stat shows the rate at which the pitcher allows runner on base per inning. \nThe formula is walks + hits / innings pitched.',
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
                Text('K/BB:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 13),
                Flexible(
                  child: Text(
                      'Stands for Strikes per walks. \nThis stat shows how many strikes they throw compared to how many balls they throw. \nThe formula is  / at bats.',
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
                Text('babip:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 5),
                Flexible(
                  child: Text(
                      'Stands for Batting average on balls in play. \nThis stat shows batting average agaisnt the pitcher when balls are in play, excluding strikeouts and home runs.',
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
                Text('HR/9:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 9),
                Flexible(
                  child: Text(
                      'Stands for Home runs per 9 innings. \nThis stat shows the number home runs allowed in one 9 inning game\nThe formula is Hr/9' ,
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
                Text('H/9:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 23),
                Flexible(
                  child: Text(
                      'Stands for Hits per 9 innings. \nThis stat shows the number of hits allowed in one 9 inning game. \nthe formula is h/9 ',
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
                Text('bb/9:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                      'Stands for walks per 9 innings. \nThis stat shows the number of walks allowed in one 9 inning game \nThe formula is walks / 9',
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
                Text('k%:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 23),
                Flexible(
                  child: Text(
                      'Stands for strike percentage. \nthis stat shows how many strikes the pitcher throws compared to total pitches\nThe formula is strikes / total pitches',
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
                Text('PIP:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 20),
                Flexible(
                  child: Text(
                      'Stands for Pitches Per inning Pitched. \nThis stat tracks how many pitches a pitcher will thow in an inning\nThe formula is Pitches / innings pitched ',
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
                SizedBox(width: 12),
                Flexible(
                  child: Text(
                      'Stands for Pitches per plate apearance. \nThis stat how many pitches are thrown per batter\nThe formula is pitches / batters faced',
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
                Text('IP:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 33),
                Flexible(
                  child: Text(
                      'Stands for innings pitched. \nThis stat counts innings a pitcher pitched',
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
                Text('W%:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 12),
                Flexible(
                  child: Text(
                      'Stands for win percentage. \nThis stat is the percentage of games the pitcher has won.\nThe formula is games won / games played',
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
                Text('gidp:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 7),
                Flexible(
                  child: Text(
                      'Stands for Ground into double play. \nThis stat shows how many times the pitcher has induced a double play.',
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
                Text('SV:',
                    style: TextStyle(
                      fontSize: 21,
                    )),
                SizedBox(width: 25),
                Flexible(
                  child: Text(
                      'Stands for Saves. \nA save is when the pitcher get the last out in a game when their team is winning by 3 or less.',
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
                Text('go/pa:',
                    style: TextStyle(
                      fontSize: 16,
                    )),
                SizedBox(width: 2),
                Flexible(
                  child: Text(
                      'Stands for Ground out per Air out. \nThis stat shows if a pitcher induces more balls in the air or on the ground  \nThe formula is ground outs / air outs ',
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
                Text('g:',
                    style: TextStyle(
                      fontSize: 23,
                    )),
                SizedBox(width: 27),
                Flexible(
                  child: Text(
                      'Stands for games played. \nThis stat shows how many games the pitcher has played in',
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
