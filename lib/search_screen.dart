import 'player_list.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;


class SearchScreen extends StatelessWidget{
  // Future fetchNotes() async{
  //   var url = 'https://raw.githubusercontent.com/boriszv/json/master/random_example.json'
  // } figure this out later

  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(
          itemBuilder: (context, index){
            return Card(
               child: Padding(
                 padding: const EdgeInsets.only(top: 32, bottom: 32, left: 16, right: 16),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Text(
                       'Note Title',
                       style: TextStyle(
                         fontSize: 22,
                         fontWeight: FontWeight.bold
                       ),
                     ),
                     Text(
                       'Note Text',
                       style: TextStyle(
                           color: Colors.grey.shade600
                       ),
                     )
                   ],
                 ),
               ),
            );
          }
      ),
    );
  }
}