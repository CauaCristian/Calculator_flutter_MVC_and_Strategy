import '../models/calculatorModel.dart';
class CalculatorController {
  CalculatorModel _calculatorModel = CalculatorModel();

  void setNumber1(double number) {
    _calculatorModel.number1 =number;
  }

  void setNumber2(double number) {
    _calculatorModel.number2 =number;
  }

  void setOperation(String operation) {
    _calculatorModel.operation = operation;
  }
  String getOperation() {
    return _calculatorModel.operation;
  }

  double calculate() {
    return _calculatorModel.calculate();
  }
}