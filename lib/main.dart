// @dart=2.9
import 'pages/login_page.dart';
import 'package:batterup/pages/signup_page.dart';
import 'package:batterup/pages/user_view.dart';
import 'package:flutter/material.dart';
import 'pages/stat_screen.dart';

//add this text
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title:'QuickStat',
      debugShowCheckedModeBanner: false,
      home: MyUserPage(title: 'QuickStat'),
    );
  }
}

