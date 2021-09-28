import 'player_list.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;


class SearchScreen extends StatelessWidget{

  const SearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children:   <Widget>[
          SizedBox(height: 30.0,),
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
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          const Text('Suggested Players',
              style: TextStyle(fontSize: 30, color: Colors.blueAccent)
          ),
          SizedBox(height: 15.0,),
          Expanded(
            child: PlayerList(),
          )
        ],),
    );
  }
}
