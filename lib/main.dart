import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade300,
        appBar: AppBar(
          title: Text("Dice Game"),
          backgroundColor: Colors.red,
        ),
        body: DiceGame(),
      ),
    ),
  );
}

class DiceGame extends StatefulWidget {
  const DiceGame({super.key});

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  void rechec() {
    leftDiceNum = Random().nextInt(6) + 1;
    rightDiceNum = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rechec();
                });
              },
              child: Image.asset("Images/$leftDiceNum.png"),
            ),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rechec();
                    });
                  },
                  child: Image.asset("Images/$rightDiceNum.png"))),
        ],
      ),
    );
  }
}

// class DiceGame extends StatelessWidget {
//   const DiceGame({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
