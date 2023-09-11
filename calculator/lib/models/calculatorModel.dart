import 'strategy/OperationStrategy.dart';
class CalculatorModel {
  double _number1 = 0.0;
  double _number2 = 0.0;
  String _operation = "";

  set number1(double number1) => this._number1 = number1;
  set number2(double number2) => this._number2 = number2;

  double Calculate(){
    if(_operation == "+"){
      return AdditionStrategy().calculate(_number1,_number2);
    }
    if(_operation == "-"){
      return SubtracionStrategy().calculate(_number1,_number2);
    }
    if(_operation == "*"){
      return MultiplicationStrategy().calculate(_number1,_number2);
    }
    if(_operation == "/"){
      return DivisonStrategy().calculate(_number1,_number2);
    }
    if(_operation == "%"){
      return RestOfDivisionStrategy().calculate(_number1,_number2);
    }
    return 0.0;
  }
}