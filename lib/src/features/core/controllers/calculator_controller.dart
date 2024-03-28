import 'package:get/get.dart';

import '../../../repository/calculator_repository.dart';

class CalculatorController extends GetxController {
  static CalculatorController get instance => Get.find();
  final calculatorRepo = Get.put(CalculatorRepository());

  String get getResult {
    return calculatorRepo.getResult;
  }

  void onTap(String value) {
    calculatorRepo.onTap(value);
  }

  double solve() {
    return calculatorRepo.solve();
  }
}
