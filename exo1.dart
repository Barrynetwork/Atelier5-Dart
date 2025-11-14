void main() {
  try {
    int div = 12 ~/ 0;
    print(div);
  } catch (e) {
    print("Division impossible");
  } finally {
    print("Fin du programme");
  }
}
