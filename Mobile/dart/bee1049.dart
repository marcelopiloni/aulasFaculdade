import 'dart:io';

void main() {
  // Lê as três palavras
  String palavra1 = stdin.readLineSync()!;
  String palavra2 = stdin.readLineSync()!;
  String palavra3 = stdin.readLineSync()!;

  // Verifica as combinações de palavras para determinar o animal
  if (palavra1 == "vertebrado") {
    if (palavra2 == "ave") {
      if (palavra3 == "carnivoro") {
        print("aguia");
      } else if (palavra3 == "onivoro") {
        print("pomba");
      }
    } else if (palavra2 == "mamifero") {
      if (palavra3 == "onivoro") {
        print("homem");
      } else if (palavra3 == "herbivoro") {
        print("vaca");
      }
    }
  } else if (palavra1 == "invertebrado") {
    if (palavra2 == "inseto") {
      if (palavra3 == "hematofago") {
        print("pulga");
      } else if (palavra3 == "herbivoro") {
        print("lagarta");
      }
    } else if (palavra2 == "anelideo") {
      if (palavra3 == "hematofago") {
        print("sanguessuga");
      } else if (palavra3 == "onivoro") {
        print("minhoca");
      }
    }
  }
}
