import 'dart:io';

void main(List<String> args) {
  int num1, num2, prod;

  num1 = int.parse(stdin.readLineSync()!);
  num2 = int.parse(stdin.readLineSync()!);
  
  prod = num1*num2;
  print("PROD = $prod");

}