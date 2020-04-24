import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Ball(),
        appBar: AppBar(
          title: Text("Pergunte-me Qualquer coisa!"),
          backgroundColor: Colors.blue.shade900,
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumb= 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  rolarBall();
                },
                child: Image.asset('bola/ball$ballNumb.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void rolarBall() {
    setState(() {
      ballNumb = Random().nextInt(12)+1;
    });
  }
}
