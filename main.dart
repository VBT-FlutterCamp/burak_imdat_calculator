import 'dart:io';

import 'calculator.dart';

void main() {
  final Calculator calculator = Calculator();
  int choice = 1;
  while (choice != 0) {
    choice = getChoice();
    if (choice == 0) {
      calculator.manager(choice, 0, 0);
      break;
    }
    double num1 = getNum('First');
    double num2 = getNum('Second');
    calculator.manager(choice, num1, num2);
  }
}

int getChoice() {
  print('');
  print('1 - Sum');
  print('2 - Subtract');
  print('3 - Multiply');
  print('4 - Divide');
  print('0 - Exit\n');
  print('Your answer : ');
  final int answer = int.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  return answer;
}

double getNum(String numCount) {
  print('$numCount Number : ');
  final double num = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
  return num;
}
