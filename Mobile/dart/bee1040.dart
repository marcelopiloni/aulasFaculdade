import 'dart:io';

void main() {
  // Leitura das notas
  List<double> notas = stdin.readLineSync()!
      .split(' ')
      .map((nota) => double.parse(nota))
      .toList();
  
  double n1 = notas[0];
  double n2 = notas[1];
  double n3 = notas[2];
  double n4 = notas[3];
  double media = (n1 * 2 + n2 * 3 + n3 * 4 + n4 * 1) / 10;

  print("Media: ${media.toStringAsFixed(1)}");

  if (media >= 7.0) {
    print("Aluno aprovado.");
  } else if (media < 5.0) {
    print("Aluno reprovado.");
  } else {
    print("Aluno em exame.");
    
    double exame = double.parse(stdin.readLineSync()!);
    print("Nota do exame: ${exame.toStringAsFixed(1)}");

    double mediaFinal = (media + exame) / 2;

    if (mediaFinal >= 5.0) {
      print("Aluno aprovado.");
    } else {
      print("Aluno reprovado.");
    }
    
    print("Media final: ${mediaFinal.toStringAsFixed(1)}");
  }
}
