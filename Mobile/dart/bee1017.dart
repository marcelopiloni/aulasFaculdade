import 'dart:io';

void main() {
  int tempo, vm;
  double litros;

  tempo = int.parse(stdin.readLineSync()!);
  vm = int.parse(stdin.readLineSync()!);

  litros = (tempo * vm)/12;

  print(litros.toStringAsFixed(3));
}