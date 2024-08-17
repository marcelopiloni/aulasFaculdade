import 'dart:io';

void main() {
  int senha;

  senha = int.parse(stdin.readLineSync()!);

  while (senha != 2002) {
    print("Senha Invalida");
    senha = int.parse(stdin.readLineSync()!);
  }
  
  print("Acesso Permitido");

}
