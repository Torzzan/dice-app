import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dice ",
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Dice"),
        ),
        body: Dicepage(),
      ),
    );
  }
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;
  void RandomDice() {
    setState(() {});
    firstDiceNumber = Random().nextInt(6) + 1;
    secondDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset("images/dice$firstDiceNumber.png"))),
          SizedBox(
            width: 20,
          ),
          Expanded(
              flex: 1,
              child: FlatButton(
                  onPressed: () {
                    RandomDice();
                  },
                  padding: EdgeInsets.only(right: 10),
                  child: Image.asset("images/dice$secondDiceNumber.png"))),
        ],
      ),
    );
  }
}
