import 'dart:io';

void main() {
  List<int> valores = stdin.readLineSync()!
      .split(' ')
      .map((valor) => int.parse(valor))
      .toList();

  int a = valores[0];
  int b = valores[1];

  if (a % b == 0 || b % a == 0) {
    print("Sao Multiplos");
  } else {
    print("Nao sao Multiplos");
  }
}
