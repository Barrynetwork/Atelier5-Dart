void main() {
  try {
    int div = 12 ~/ 0; // ⚠️ division entière → provoque une exception
    print(div);
  } catch (e) {
    print("Division impossible"); // ✅ message affiché si erreur
  } finally {
    print("Fin du programme");
  }
}
