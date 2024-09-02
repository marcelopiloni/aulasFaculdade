import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    int x = int.parse(stdin.readLineSync()!);

    if (x == 0) {
      print("NULL");
    } else {
      String resultado = "";

      if (x % 2 == 0) {
        resultado += "EVEN ";
      } else {
        resultado += "ODD ";
      }

      if (x > 0) {
        resultado += "POSITIVE";
      } else {
        resultado += "NEGATIVE";
      }

      print(resultado);
    }
  }
}
