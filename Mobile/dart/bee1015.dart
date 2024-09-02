import 'dart:io';
import 'dart:math';

void main() {
  double x1, y1, x2, y2, distancia;
  List<String> valores1 = [];
  List<String> valores2 = [];
  valores1 = stdin.readLineSync()!.split(" ");
  valores2 = stdin.readLineSync()!.split(" ");
  
  x1 = double.parse(valores1[0]);
  y1 = double.parse(valores1[1]);
  x2 = double.parse(valores2[0]);
  y2 = double.parse(valores2[1]);


  distancia = sqrt(pow(x2 - x1, 2) + (pow(y2 - y1, 2)));

  print(distancia.toStringAsFixed(4));

  }