import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: App(),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int answerNumber = 1;

  void giveAnswer() {
    setState(() {
      answerNumber = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () => giveAnswer(),
              child: Image.asset('images/ball$answerNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
