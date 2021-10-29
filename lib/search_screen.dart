import 'api_calls/MLBAPI.dart';
import 'player_list.dart';
import 'package:flutter/material.dart';
import 'player.dart';

class MySearchPage extends StatefulWidget {
  const MySearchPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MySearchPage> createState() => SearchScreen();
}

List<Player> suggestedPlayers = <Player>[
  Player('Mookie Betts', 'Home Run'),
  Player('Aaron Judge', 'strike out'),
  Player('Mike trout', 'Home Run'),
  Player('Fernando Tatis jr', 'Home Run'),
  Player('Ronald Acuna jr', 'Home Run'),
  Player('Shohei Ohatani', 'Home Run'),
  Player('Vladimir Guerrero Jr', 'Home Run'),
  Player('JP Crawford', 'Home Run'),
  Player('Ke Bryan Haze', 'Home Run'),
  Player('Jazz Chisholm Jr.', 'Home Run'),
  Player('Ian Happ ', 'Home Run'),
  Player('Paul Goldshmit ', 'Home Run'),
  Player('David Peralta ', 'Home Run'),
  Player('Bo Bichette ', 'Home Run'),
];

class SearchScreen extends State<MySearchPage> {
  final myController = TextEditingController();
  String name = "First name Last name";




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
            SizedBox(
              height: 20.0,
            ),
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
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ListTile(
                        leading: const Icon(Icons.sports_baseball),
                        trailing: Icon(Icons.add_box_outlined),
                        title: Text(name));
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {

          name = await callApi(myController.text);
          setState(() {});
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
