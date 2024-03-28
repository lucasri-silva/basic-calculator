import 'package:calculator/src/features/core/controllers/calculator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Display extends StatelessWidget {
  final Function updateScreen;
  const Display({
    super.key,
    required this.updateScreen,
  });

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CalculatorController());

    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueGrey,
          width: 2,
        ),
      ),
      height: 120,
      width: double.infinity,
      child: Text(
        controller.getResult,
        textAlign: TextAlign.right,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 48,
        ),
      ),
    );
  }
}
