import 'package:flutter/material.dart';
import 'dart:math';

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),

        Container(
          margin: const EdgeInsets.only(bottom: 40),
          child: TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              foregroundColor: Colors.white,
              backgroundColor: Colors.black26,
              textStyle: const TextStyle(
                fontSize: 20, // font বড়
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text("🎲 Roll Dice"),
          ),
        ),
      ],
    );
  }
}
