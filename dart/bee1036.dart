import 'dart:io';
import 'dart:math';
void main() {
  double a, b, c, delta, r1 = 0, r2 = 0;
  List<String> valores = [];

  valores = stdin.readLineSync()!.split(" ");

  a = double.parse(valores[0]);
  b = double.parse(valores[1]);
  c = double.parse(valores[2]);
  
  delta = pow(b, 2) - (4 * a * c);
  
  if (delta == 0 || delta < 0 || a == 0) {
    print("Impossivel calcular");
  } else {
    r1 = (-b + sqrt(delta)) / (2 * a);
    r2 = (-b - sqrt(delta)) / (2 * a);
    print("R1 = ${r1.toStringAsFixed(5)}");
    print("R2 = ${r2.toStringAsFixed(5)}");
  }
}
