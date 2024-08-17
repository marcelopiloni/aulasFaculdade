import 'dart:io';
import 'dart:math';

void main() {
  double pi, area, raio;
  pi = 3.14159;

  raio = double.parse(stdin.readLineSync().toString());
  
  area = pi * pow(raio, 2);

  print("A=${area.toStringAsFixed(4)}");
}