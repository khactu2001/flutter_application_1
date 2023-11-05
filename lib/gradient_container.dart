import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

class GradientComponent extends StatelessWidget {
  const GradientComponent({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    const startAlignment = Alignment.topLeft;
    const endAlignment = Alignment.bottomRight;

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
