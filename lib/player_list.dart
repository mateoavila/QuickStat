import 'package:flutter/material.dart';
import 'players.dart';

class PlayerList extends StatelessWidget {

   Map<String, String> myPlayers = Map();


   void addToMyPlayers(String name) {
     print(myPlayers.length);
     myPlayers[name] = "upcomming";
     print(name + " added");
     print(myPlayers.length);

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: myPlayers.length,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: const Icon(Icons.sports_baseball),
                trailing: Text(myPlayers.values.elementAt(index),
                  style: const TextStyle(
                      color: Colors.blue,fontSize: 15),),
                title:Text(myPlayers.keys.elementAt(index))
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