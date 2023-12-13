import 'dart:io';

class Calculator {
  int? number1;
  int? number2;

  int addition(int number1, int number2) {
    return (number1) + (number2);
  }

  int subtraction(int number1, int number2) {
    return (number1) - (number2);
  }

  int multiplication(int number1, int number2) {
    return (number1) * (number2);
  }

  double division(int number1, int number2) {
    if (number2 == 0) {
      throw UnsupportedError("Division by zero is not allowed!");
    }
    return (number1) / (number2);
  }
}

void main() async {
  try {
    print("Enter the first number:");
    var num1 = int.tryParse(stdin.readLineSync()!) ?? 0;
    print("Enter the second number:");
    var num2 = int.parse(stdin.readLineSync()!);
    print(await showResult());
    Calculator ca = Calculator();
    print("The Sum: ${ca.addition(num1, num2)}");
    print("The difference: ${ca.subtraction(num1, num2)}");
    print("The product: ${ca.multiplication(num1, num2)}");
    print("The quotient: ${ca.division(num1, num2)}");
  } catch (e) {
    if (e is UnsupportedError) {
      print("Error: Division by zero is not allowed!");
    } else {
      print("Error: $e");
    }
  }
}
Future<String> showResult() async {
  return Future.delayed(const Duration(seconds: 5), () => "The results are:");
}
