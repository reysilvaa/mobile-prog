void main() {
  String test = "test2";

  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");

  String test2 = "test2";
  bool cek = false;
  if (test == test2) {
    cek = true;
    print("Hasil : $cek");
  }
}
