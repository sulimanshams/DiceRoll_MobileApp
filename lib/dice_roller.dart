import 'dart:math';
import "package:flutter/material.dart";


  final randomizer = Random();


class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-6.png";
  void RollDice() {
    var diceRoll= randomizer.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
    print("Dice Rolled");
    // .....
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeDiceImage, width: 200, height: 200),
        TextButton(
          onPressed: RollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(top: 70),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text("Roll Dice"),
        ),
      ],
    );
  }
}
