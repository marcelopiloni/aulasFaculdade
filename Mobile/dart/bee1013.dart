import 'dart:io';

void main() {

  int a, b, c, maiorab, maiorabc;
  List<int> valores = [];
  valores = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  a = valores[0]; b = valores[1]; c = valores[2];

maiorab = ((a + b + (a-b).abs())~/2);

maiorabc = ((maiorab + c + (maiorab-c).abs())~/2);

print("$maiorabc eh o maior");
}