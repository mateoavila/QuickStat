import 'package:flutter/material.dart';
import 'player.dart';

class PlayerList extends StatelessWidget {

   List<Player> myPlayers = <Player>[
    Player('Mookie Betts', 'Home Run'),
    Player('Austin Riley', 'strike out'),
    Player('Trea Turner', 'single'),
    Player('Fernando Tatis jr', 'Home Run'),
    Player('Adolis Garcia', 'flyout'),
    Player('Jose Rameriez', 'double'),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: myPlayers.length,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: Icon(Icons.sports_baseball),
                trailing: Text(myPlayers[index].pa,
                  style: TextStyle(
                      color: Colors.blue,fontSize: 15),),
                title:Text(myPlayers[index].name)
            );
          }
      ),
    );
  }
}

/*
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
*/