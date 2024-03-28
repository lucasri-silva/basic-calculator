import 'package:get/get.dart';

class CalculatorRepository extends GetxController {
  static CalculatorRepository get instance => Get.find();
  String operator = '';
  double result = 0.0;
  List<String> values = [];

  get getResult {
    return values.isEmpty ? '0.0' : values.join();
  }

  void onTap(String value) {
    if (value == '=') {
      result = solve();
      values.clear();
      values.add(result.toString());
      operator = '';
    } else if (value == 'AC') {
      values.clear();
      result = 0.0;
      operator = '';
    } else if ((value == '+' || value == '-' || value == '*' || value == '%') &&
        operator == '') {
      values.add(value);
      operator = value;
    } else if (value == '<=') {
      if (values.isNotEmpty) {
        String lastValue = values.removeLast();
        if (lastValue.length > 1) {
          values.add(lastValue.substring(0, lastValue.length - 1));
        }
      }
    } else if (values.isNotEmpty &&
        !['+', '-', '*', '%'].contains(values.last)) {
      String lastValue = values.removeLast();
      values.add(lastValue + value);
    } else {
      if (!['+', '-', '*', '%'].contains(value)) {
        values.add(value);
        operator = '';
      }
    }
  }

  double solve() {
    while (values.length > 1) {
      double firstValue = double.parse(values[0]);
      String operator = values[1];
      double secondValue = double.parse(values[2]);

      result = 0.0;
      switch (operator) {
        case '+':
          result = firstValue + secondValue;
          break;
        case '-':
          result = firstValue - secondValue;
          break;
        case '*':
          result = firstValue * secondValue;
          break;
        case '%':
          result = firstValue % secondValue;
          break;
      }

      values[0] = result.toString();
      values.removeAt(1);
      values.removeAt(1);
    }
    return double.parse(values[0]);
  }
}
