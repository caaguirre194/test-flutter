import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Dleft = 1;
    var Dright = 2;
    return Padding(
      padding: const EdgeInsets.only(top: 205.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("Left button got pressed.");
              },
              child: Image.asset('images/dice$Dleft.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("Right button got pressed.");
              },
              child: Image.asset('images/dice$Dright.png'),
            ),
          ),
        ],
      ),
    );
  }
}
