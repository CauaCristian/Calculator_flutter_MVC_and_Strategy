import 'strategy/OperationStrategy.dart';
class CalculatorModel {
  double _number1 = 0.0;
  double _number2 = 0.0;
  String _operation = "+";

  set number1(double number1) => _number1 = number1;
  set number2(double number2) => _number2 = number2;
  set operation(String operation) => _operation = operation;
  String get operation => this._operation;

  double calculate(){
    if(_operation == "+"){
      return AdditionStrategy().calculate(_number1,_number2);
    }
    if(_operation == "-"){
      return SubtracionStrategy().calculate(_number1,_number2);
    }
    if(_operation == "x"){
      return MultiplicationStrategy().calculate(_number1,_number2);
    }
    if(_operation == "÷"){
      return DivisonStrategy().calculate(_number1,_number2);
    }
    if(_operation == "%"){
      return RestOfDivisionStrategy().calculate(_number1,_number2);
    }
    return 0.0;
  }
}