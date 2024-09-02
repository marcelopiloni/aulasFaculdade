import 'dart:io';

void main() {
  int x;
  double y, consumo;

  x = int.parse(stdin.readLineSync()!);
  y = double.parse(stdin.readLineSync()!);

  consumo = x / y;

    print("${consumo.toStringAsFixed(3)} km/l");
}