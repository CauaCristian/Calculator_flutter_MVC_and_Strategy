import '../models/calculatorModel.dart';
class CalculatorController {
  CalculatorModel _CalculatorModel = CalculatorModel();

  void setNumber1(double number) {
    _CalculatorModel.number1 =number;
  }

  void setNumber2(double number) {
    _CalculatorModel.number2 =number;
  }

  void setOperation(String operation) {
    _CalculatorModel.operation = operation;
  }

  double calculate() {
    return _CalculatorModel.calculate();
  }
}