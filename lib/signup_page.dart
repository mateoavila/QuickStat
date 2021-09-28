import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main.dart';

class MySignupPage extends StatefulWidget {
  const MySignupPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySignupPage> createState() => _MySignupPageState();
}

class _MySignupPageState extends State<MySignupPage> {
  String dropdownValue = 'Favorite Team';

  void _toLogin() {
    //how to move to a new screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  'assets/batter_silhouette.png',
                  height: 120,
                  width: 120,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'BatterUp',
                  style: TextStyle(fontSize: 55, color: Colors.blueAccent),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Re-enter Password",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconSize: 20,
              elevation: 16,
              style: const TextStyle(color: Colors.blueAccent),
              underline: Container(
                height: 2,
                color: Colors.blueAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Favorite Team',
                'Arizona Diamondbacks',
                'Atlanta Braves',
                'Baltimore Orioles',
                'Boston Red Sox',
                'Chicago White Sox',
                'Chicago Cubs',
                'Cincinnati Reds',
                'Cleveland Indians',
                'Colorado Rockies',
                'Detroit Tigers',
                'Houston Astros',
                'Kansas City Royals',
                'Los Angeles Angels',
                'Los Angeles Dodgers',
                'Miami Marlins',
                'Milwaukee Brewers',
                'Minnesota Twins',
                'New York Yankees',
                'New York Mets',
                'Oakland Athletics',
                'Philadelphia Phillies',
                'Pittsburgh Pirates',
                'San Diego Padres',
                'San Francisco Giants',
                'Seattle Mariners',
                'St. Louis Cardinals',
                'Tampa Bay Rays',
                'Texas Rangers',
                'Toronto Blue Jays',
                'Washington Nationals']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(fontSize: 20,)),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  minWidth: 400,
                  disabledColor: Colors.blueAccent,
                  child: RaisedButton(
                      disabledElevation: 4.0,
                      onPressed: _toLogin,
                      // do things here to check in firebase
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
