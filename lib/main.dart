import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee 150 for games with Mr. Nick'),
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollTheDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  Text doubleNotification() {
    if (leftDiceNumber == 1 && rightDiceNumber == 1) {
      return Text(
        'Snake eyes :)',
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      );
    } else if (leftDiceNumber == 2 && rightDiceNumber == 2) {
      return Text(
        'Oh Yeah! Double 2s :)',
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      );
    } else if (leftDiceNumber == 3 && rightDiceNumber == 3) {
      return Text(
        'Nice! Double Trips :)',
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      );
    } else if (leftDiceNumber == 4 && rightDiceNumber == 4) {
      return Text(
        'Nice! Double 4s :)',
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      );
    } else if (leftDiceNumber == 5 && rightDiceNumber == 5) {
      return Text(
        'Nice! Double 5s :)',
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      );
    } else if (leftDiceNumber == 6 && rightDiceNumber == 6) {
      return Text(
        'Nice! Double 6s :)',
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
      );
    } else {
      return Text('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        rollTheDice();
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png')),
                ),
                Expanded(
                  child: FlatButton(
                      onPressed: () {
                        rollTheDice();
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png')),
                )
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: doubleNotification(),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: FloatingActionButton(
                    backgroundColor: Colors.black54,
                    onPressed: () {
                      rollTheDice();
                    },
                    child: Text(
                      'Roll',
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
