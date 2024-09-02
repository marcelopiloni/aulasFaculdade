import 'dart:io';

void main() {
  List<int> valores = stdin.readLineSync()!
      .split(' ')
      .map((valor) => int.parse(valor))
      .toList();

  int x = valores[0];
  int y = valores[1];

  if (x > y) {
    int temp = x;
    x = y;
    y = temp;
  }

  int soma = 0;

  for (int i = x + 1; i < y; i++) {
    if (i % 2 != 0) {
      soma += i;
    }
  }

  print(soma);
}
