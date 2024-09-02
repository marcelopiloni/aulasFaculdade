import 'dart:io';

void main() {

  int notas, resto;

  notas = int.parse(stdin.readLineSync()!);

  print(notas);
  print("${notas ~/ 100} nota(s) de R\$ 100,00");
  resto = notas % 100;
  print("${resto ~/ 50} nota(s) de R\$ 50,00");
  resto = resto % 50;
  print("${resto ~/ 20} nota(s) de R\$ 20,00");
  resto = resto % 20;
  print("${resto ~/ 10} nota(s) de R\$ 10,00");
  resto = resto % 10;
  print("${resto ~/ 5} nota(s) de R\$ 5,00");
  resto = resto % 5;
  print("${resto ~/ 2} nota(s) de R\$ 2,00");
  resto = resto % 2;
  print("${resto ~/ 1} nota(s) de R\$ 1,00");

}