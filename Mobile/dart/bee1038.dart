import 'dart:io';
void main() {
  int cod, qtd;  double total = 0;
  List<int> valores = [];
  valores = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  cod = valores[0];  qtd = valores[1];
  switch (cod) {
    case 1:
      total = qtd * 4.00;
      break;
    case 2:
      total = qtd * 4.50;
      break;
    case 3:
      total = qtd * 5.00;
      break;
    case 4:
      total = qtd * 2.00;
      break;
    case 5:
      total = qtd * 1.50;
      break;
    default:
  }
  print("Total: R\$ ${total.toStringAsFixed(2)}");
}
