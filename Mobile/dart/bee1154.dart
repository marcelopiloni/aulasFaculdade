import 'dart:io';

void main() {
  int soma = 0;
  int contagem = 0;

  while (true) {
    int idade = int.parse(stdin.readLineSync()!);

    if (idade < 0) {
      break;
    }

    soma += idade;
    contagem++;
  }

  if (contagem > 0) {
    double average = soma / contagem;
    print(average.toStringAsFixed(2));
  } else {
    print("Nenhuma idade válida foi inserida.");
  }
}
