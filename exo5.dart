import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);

  @override
  String toString() => message;
}

void main() {
  try {
    stdout.write("Entrez un nombre : ");
    String? nombre = stdin.readLineSync();
    if (nombre == null) throw Exception("il faut mettre un nombre");

    double n = double.parse(nombre);

    if (n < 0) {
      throw NombreNegatifException("Svp donner un nombre positif");
    }

    print("Le carré de $n est ${n * n}.");
  } on NombreNegatifException catch (e) {
    print(e);
  } on FormatException {
    print("veuillez entrer un nombre valide.");
  } catch (e) {
    print("Erreur inattendue : $e");
  } finally {
    print("Merci ");
  }
}
