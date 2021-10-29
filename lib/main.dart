// @dart=2.9
import 'login_page.dart';
import 'package:batterup/signup_page.dart';
import 'package:batterup/user_view.dart';
import 'package:flutter/material.dart';

//add this text
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'BatterUp',
      home: LoginPage(),
    );
  }
}

