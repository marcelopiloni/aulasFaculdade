import 'dart:io';

void main() {
  String nome;
  double salario, vendas, total;
   
  nome = stdin.readLineSync()!;
  salario = double.parse(stdin.readLineSync()!);
  vendas = double.parse(stdin.readLineSync()!);

  total = salario + (0.15 * vendas);

  print("TOTAL = R\$ ${total.toStringAsFixed(4)}");




  
}