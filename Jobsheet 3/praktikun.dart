void main() {
  String nama = "Moch. Reynald Silva Baktiar";
  String nim = "2241720203";

  bool isPrime(int number) {
    if (number <= 1) return false;
    for (int i = 2; i <= number ~/ 2; i++) {
      if (number % i == 0) return false;
    }
    return true; 
  }

  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan Prima: $i");
      print("Nama Lengkap: $nama");
      print("NIM: $nim");
      print("");
    }
  }
}
