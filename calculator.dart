import 'ICalculator.dart';

class Calculator extends ICalculator {
  @override
  double sum(double num1, double num2) {
    return num1 + num2;
  }

  @override
  double subtract(double num1, double num2) {
    return num1 - num2;
  }

  @override
  double multiply(double num1, double num2) {
    return num1 * num2;
  }

  @override
  double divide(double num1, double num2) {
    return num1 / num2;
  }

  @override
  bool manager(int choice, double num1, double num2) {
    double result = 0;
    switch (choice) {
      case 1:
        result = sum(num1, num2);
        break;
      case 2:
        result = subtract(num1, num2);
        break;
      case 3:
        result = multiply(num1, num2);
        break;
      case 4:
        result = divide(num1, num2);
        break;
      default:
        print('Exit...');
        return false;
    }
    print('\nResult :$result');
    return true;
  }
}
