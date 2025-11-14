import 'dart:io';

void main() {
  print(" Veuillez Entrer votre âge SVP : ");

  String? input = stdin.readLineSync();

  try {
    int age = int.parse(input!);
    print("Votre âge est : $age");
  } on FormatException {
    print(
      "Format invalide : veuillez entrer un nombre le format n'est pas valide!",
    );
  } finally {
    print("Fin d'opération");
  }
}
