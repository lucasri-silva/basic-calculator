import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          'CALCULADORA',
          style: TextStyle(
            fontSize: 40,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
