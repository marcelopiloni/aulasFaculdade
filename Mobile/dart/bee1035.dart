import 'dart:io';

void main() {
  int a, b, c, d;
  List<String> mensagem = [];
  mensagem = stdin.readLineSync()!.split(" ");

  a = int.parse(mensagem[0]);
  b = int.parse(mensagem[1]);
  c = int.parse(mensagem[2]);
  d = int.parse(mensagem[3]);

  if (b > c && d > a && (c + d) > (a + b) && c > 0 && d > 0 && a % 2 == 0) {
    print("Valores aceitos");
  } else {
    print("Valores nao aceitos");
  }
 
}