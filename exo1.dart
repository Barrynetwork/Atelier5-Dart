void main() {
  try {
    int div = 12 ~/ 0;
    print(div);
  } catch (e) {
<<<<<<< HEAD
    print("Division impossible");
=======
    print("Division impossible"); 
>>>>>>> 5aac6ad832a1e45bdc440b4986bc0e07c7af1ffa
  } finally {
    print("Fin du programme");
  }
}
