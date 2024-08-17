import 'dart:io';

void main() {
  int n1,n2,soma;

  n1 =  int.parse(stdin.readLineSync().toString());
  n2 =  int.parse(stdin.readLineSync()!);

  soma = n1+n2;

  print("X = $soma");

}

