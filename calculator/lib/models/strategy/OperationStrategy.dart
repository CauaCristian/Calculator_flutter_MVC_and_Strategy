abstract class OperationStrategy {
  double calculate(double num1, double num2);
}
class AdditionStrategy implements OperationStrategy{
  @override
  double calculate(double num1, double num2){
    return num1 + num2;
  }
}
class SubtracionStrategy implements OperationStrategy{
  @override
  double calculate(double num1, double num2){
    return num1 - num2;
  }
}
class DivisonStrategy implements OperationStrategy{
  @override
  double calculate(double num1, double num2){
    return num1 / num2;
  }
}
class MultiplicationStrategy implements OperationStrategy{
  @override
  double calculate(double num1, double num2){
    return num1 * num2;
  }
}

class RestOfDivisionStrategy implements OperationStrategy{
  @override
  double calculate(double num1, double num2){
    return num1 % num2;
  }
}