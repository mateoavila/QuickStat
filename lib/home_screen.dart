import 'package:flutter/material.dart';
import 'player_list.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children:  <Widget>[
          SizedBox(height: 15.0,),
        Text('My Players',
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
