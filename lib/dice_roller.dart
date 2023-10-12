import 'package:flutter/material.dart';
import 'package:dice/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget
{
  const DiceRoller({super.key});
  @override
  State <DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{
  @override
  int currentDiceRoll=2;
  var randomiser=Random();

  void rollDice() 
  {
    setState(()
    {
      currentDiceRoll=randomiser.nextInt(6)+1;
    },
    );
  }
  Widget build(context)
  {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-$currentDiceRoll.png',
              width: 150,
              ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 28),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const StyledText('Roll Dice'),
            )
          ],
        );   
  }
}