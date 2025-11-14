void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception("le mot de passe doit etre au minimum 6 caractere");
  }
  print("Le Mot de passe est  valide !");
}

void main() {
  List<String> motsDePasse = ["abc", "123456", "pass", "839ffdi"];

  for (var mp in motsDePasse) {
    try {
      verifierMotdepasse(mp);
    } catch (e) {
      print("Erreur : $e");
    }
  }
}
