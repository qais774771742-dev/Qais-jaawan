import 'dart:io';

void divideNumbers({required double num1, double? num2}) {
  
  double safeNum2 = num2 ?? 0.0;

  try {
    if (safeNum2 == 0) {
      throw Exception("Error: Cannot divide by zero!");
    }
    
    double result = num1 / safeNum2;
    print("The result is: $result");
    
  } catch (e) {
    print("An error occurred: $e");
  }
}

void main() {
  print("Enter the first number:");
  double n1 = double.tryParse(stdin.readLineSync() ?? '0') ?? 0.0;

  print("Enter the second number (optional):");
  String? n2Input = stdin.readLineSync();
  double? n2 = double.tryParse(n2Input ?? '');

  divideNumbers(num1: n1, num2: n2);
}