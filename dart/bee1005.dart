import 'dart:io';

void main() {
  double a, b, media;

  a = double.parse(stdin.readLineSync()!);
  b = double.parse(stdin.readLineSync()!);

  media = (a * 3.5 + b * 7.5) / 11;

  print("MEDIA = ${media.toStringAsFixed(5)}");
}
