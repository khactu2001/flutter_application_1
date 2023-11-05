import 'dart:math';
import 'package:flutter/material.dart';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override //means: maybe statefulwidget contains createState
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var rollDiceNumber = 1;

  void rollDice() {
    // function called to run build() method to execute update UI
    setState(() {
      rollDiceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$rollDiceNumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.red,
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
          child: const Text('Roll dice'),
        )
      ],
    );
  }
}
