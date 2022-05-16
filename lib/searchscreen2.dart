import 'package:quickstat/pages/home_screen.dart';

import 'api_calls/mlbapi.dart';
import 'player_list.dart';
import 'package:flutter/material.dart';
import 'players.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySearchPage> createState() => SearchScreen2();
}

class SearchScreen2 extends State<MySearchPage> {

  final myController = TextEditingController();
  bool selected = true;
  String name = "First name Last name";
  late List<Player> _players;
  late bool _loading;

  Map<String, String> suggestedPlayers = {
    "Mookie Betts": "Home Run",
    'Aaron Judge': 'strike out',
    'Mike Trout': 'Home Run',
    'Fernando Tatis jr': 'Home Run',
    'Ronald Acuna jr': 'Home Run',
    'Shohei Ohatani': 'Home Run',
    'Vladimir Guerrero Jr': 'Home Run',
    "Bo Bichette": "strikeout",
    "Javier Baez": "strikeout",
    "Jazz Chisholm jr." : "single",
    "Akill Badoo" : "flyout",
  };

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(_loading ? 'loading...' : 'Search'),
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
                  onFieldSubmitted: (value) async {
                    // name = await callApi(myController.text);
                    // suggestedPlayers = {
                    //   name: "Upcoming",
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
                  itemCount: null == _players ? 0 : _players.length,
                  itemBuilder: (context, index) {
                    Player player = _players[index];
                    return ListTile(
                      leading: const Icon(Icons.sports_baseball),
                      title: Text("wahooo it works :( not really"),
                      trailing: IconButton(
                        color: Colors.blue,
                        splashColor: Colors.blue,
                        icon: Icon( selected ? Icons.add_box_outlined : Icons.add_box),
                        onPressed: (){
                          setState(() {
                            selected = !selected;
                            //HomeScreen().addToMyPlayers(suggestedPlayers.keys.elementAt(index));
                          });
                        },
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
