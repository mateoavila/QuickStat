import 'package:quickstat/pages/signup_page.dart';
import 'package:quickstat/pages/user_view.dart';
import '../main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginPage> {
  void _toUserView() {
    //how to move to a new screen
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const MyUserPage(
                title: 'QuickStat',
              )),
    );
  }

  void _toSignup() {
    //how to move to a new screen
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const MySignupPage(
                title: 'Sign Up Page',
              )),
    );
  }

  @override
  // ignore: non_constant_identifier_names
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: 70,
                ),
                Image.asset(
                  'assets/batter_silhouette.png',
                  height: 180,
                  width: 180,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'BatterUp',
                  style: TextStyle(fontSize: 55, color: Color(0xff002D72)),
                )
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height: 50,
                  minWidth: 400,
                  disabledColor: Color(0xff002D72),
                  child: RaisedButton(
                      disabledElevation: 4.0,
                      onPressed: _toUserView,
                      // do things here to check in firebase
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                ButtonTheme(
                  height: 50,
                  minWidth: 400,
                  disabledColor: Color(0xff002D72),
                  child: RaisedButton(
                      onPressed: _toSignup,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
