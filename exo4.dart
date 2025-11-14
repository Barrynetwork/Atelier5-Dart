class MotdepasseCourtException implements Exception {
  String message;
  MotdepasseCourtException(this.message);

  @override
  String toString() => message;
}

void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException(
      "Erreur : le mot de passe doit contenir au moins 6 caractères.",
    );
  }
  print("Mot de passe correcte !");
}

void main() {
  List<String> motsDePasse = ["142", "absfgdo", "1528jsk"];

  for (var mp in motsDePasse) {
    try {
      verifierMotdepasse(mp);
    } on MotdepasseCourtException catch (e) {
      print(e);
    }
  }
}
