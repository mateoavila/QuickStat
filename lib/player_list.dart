import 'package:flutter/material.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({Key? key}) : super(key: key);
  static const List<String> players = [
    'Mookie Betts',
    'Aaron Judge',
    'Mike trout',
    'Fernando Tatis jr.',
    'Brandon Crawford',
    'matt Chapman',
    'Adolis Garcia',
    'Zac Gallen',
    'Christian Yellich',
    'Luis Robert',
    'Ian Happ',
    'C.J. Cron',
    'Nick Castiallnos',
    'Shane Beiber',
    'Austin Riley',
    'Randy Arozarano',
    'Kike Hernandez',
    'vlad Jr.',
    'Jose Rameriez',
    'Bo Bichett',
    'Trea Turner',
    'Justin Turner',
    'Shohe Ohtani',
    'Jacob Degrom',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: players.length,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: Icon(Icons.sports_baseball),
                trailing: Text("at Bat",
                  style: TextStyle(
                      color: Colors.blue,fontSize: 15),),
                title:Text(players[index])
            );
          }
      ),
    );
  }
}