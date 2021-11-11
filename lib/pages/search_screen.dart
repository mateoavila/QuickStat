import 'package:batterup/pages/home_screen.dart';
import 'package:batterup/pages/stat_screen.dart';
import 'package:batterup/stat_api_calls/stat_api.dart';

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
  Map<String, String> fakeMyPlayers = {};

  Map<String, String> suggestedPlayers = {
    "Mookie Betts": "Home Run",
    'Aaron Judge': 'strike out',
    'Mike Trout': 'Home Run',
    'Fernando Tatis jr': 'Home Run',
    'Ronald Acuna jr': 'Home Run',
    'Shohei Ohtani': 'Home Run',
    'Vladimir Guerrero Jr': 'Home Run',
    "Bo Bichette": "strikeout",
    "Javier Baez": "strikeout",
    "Jazz Chisholm jr.": "single",
    "Akill Badoo": "flyout",
  };

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
                  onFieldSubmitted: (value)  async {
                    name = await getNameApi(myController.text);
                    suggestedPlayers = {
                      name: "Upcoming",
                    };
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
                    return ListTile(
                      leading: const Icon(Icons.sports_baseball),
                      title: Text(suggestedPlayers.keys.elementAt(index)),
                      trailing: IconButton(
                        color: Colors.blue,
                        splashColor: Colors.blue,
                        icon: Icon(
                            selected ? Icons.add_box_outlined : Icons.add_box),
                        onPressed: () {
                          setState(() {
                            HomeScreen().addToMyPlayers(suggestedPlayers.keys.elementAt(index));
                          });
                        },
                      ),
                      onTap: () async {
                        player = await callStatApi(suggestedPlayers.keys.elementAt(index));
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => myStatPage(name: suggestedPlayers.keys.elementAt(index), player: player)),
                        );
                      },
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
