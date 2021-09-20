import 'package:flutter/material.dart';

class MyUserPage extends StatefulWidget {
  const MyUserPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyUserPage> createState() => _MyUserPageState();
}

class _MyUserPageState extends State<MyUserPage> {
    int _counter = 0;

    void _incrementCounter() {
      setState(() {
        _counter++;
     });
    }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'screen 2',
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}