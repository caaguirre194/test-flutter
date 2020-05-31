import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int dLeft = 1;
  int dRight = 1;

  void setDices() {
    setState(() {
      var random = new Random();
      dLeft = random.nextInt(6) + 1;
      dRight = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 205.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setDices();
                print("Left button got pressed.");
              },
              child: Image.asset('images/dice$dLeft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setDices();
                print("Right button got pressed.");
              },
              child: Image.asset('images/dice$dRight.png'),
            ),
          ),
        ],
      ),
    );
  }
}
