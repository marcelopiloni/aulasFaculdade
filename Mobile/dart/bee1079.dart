import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < n; i++) {
    List<double> valores = stdin.readLineSync()!
        .split(' ')
        .map((valor) => double.parse(valor))
        .toList();
    double v1 = valores[0];
    double v2 = valores[1];
    double v3 = valores[2];
    double mediaPonderada = (v1 * 2 + v2 * 3 + v3 * 5) / 10;
    print(mediaPonderada.toStringAsFixed(1));
  }
}
