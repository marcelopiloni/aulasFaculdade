import 'dart:io';

void main() {

  int num, hora;
  double valor, salario;

  num = int.parse(stdin.readLineSync()!);
  hora = int.parse(stdin.readLineSync()!);
  valor = double.parse(stdin.readLineSync()!);
  

  salario = hora * valor;

  print("NUMBER = $num");
  print("SALARY = U\$ ${salario.toStringAsFixed(2)}");


  


  
}