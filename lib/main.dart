import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Dice',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  int firstdice = 2;
  int seconddice = 3;
  int thirddice = 6;
  int fourdice = 1;

  void chancedice() {
    setState(() {
      firstdice = Random().nextInt(6) + 1;
      seconddice = Random().nextInt(6) + 1;
      thirddice = Random().nextInt(6) + 1;
      fourdice = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: TextButton(
                  child: Image.asset(
                    "images/dice$firstdice.png",
                  ),
                  onPressed: () {
                    chancedice();
                  },
                ),
              ),
              Expanded(
                  child: TextButton(
                child: Image.asset("images/dice$seconddice.png"),
                onPressed: () {
                  chancedice();
                },
              )),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                child: Image.asset("images/dice$thirddice.png"),
                onPressed: () {
                  chancedice();
                },
              )),
              Expanded(
                  child: TextButton(
                child: Image.asset("images/dice$fourdice.png"),
                onPressed: () {
                  chancedice();
                },
              )),
            ],
          )
        ],
      ),
    );
  }
}
