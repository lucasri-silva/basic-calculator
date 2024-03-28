import 'package:flutter/material.dart';

import 'widgets/display.dart';
import 'widgets/header.dart';
import 'widgets/keyboard.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  void updateScreen() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Header(),
            Display(updateScreen: updateScreen),
            Keyboard(updateScreen: updateScreen),
          ],
        ),
      ),
    );
  }
}
