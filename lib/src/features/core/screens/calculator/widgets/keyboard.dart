import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/calculator_controller.dart';

class Keyboard extends StatelessWidget {
  final Function updateScreen;

  const Keyboard({
    Key? key,
    required this.updateScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CalculatorController());

    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildButton('AC', () {
                controller.onTap('AC');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('', () {}),
              const SizedBox(width: 10),
              buildButton('<=', () {
                controller.onTap('<=');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('%', () {
                controller.onTap('%');
                updateScreen();
              }),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildButton('7', () {
                controller.onTap('7');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('8', () {
                controller.onTap('8');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('9', () {
                controller.onTap('9');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('*', () {
                controller.onTap('*');
                updateScreen();
              }),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildButton('4', () {
                controller.onTap('4');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('5', () {
                controller.onTap('5');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('6', () {
                controller.onTap('6');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('-', () {
                controller.onTap('-');
                updateScreen();
              }),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildButton('1', () {
                controller.onTap('1');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('2', () {
                controller.onTap('2');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('3', () {
                controller.onTap('3');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('+', () {
                controller.onTap('+');
                updateScreen();
              }),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildButton('0', () {
                controller.onTap('0');
                updateScreen();
              }),
              const SizedBox(width: 10),
              buildButton('', () {}),
              const SizedBox(width: 10),
              buildButton('', () {}),
              const SizedBox(width: 10),
              buildButton('=', () {
                controller.onTap('=');
                updateScreen();
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String label, VoidCallback onTap) {
    return Flexible(
      fit: FlexFit.tight,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Text(
              label,
              style: const TextStyle(fontSize: 36),
            ),
          ),
        ),
      ),
    );
  }
}
