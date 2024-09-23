void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  print("Tambahan Kode :");
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);  


  print("Tambahkan NIM :");
  var nim = ['2241720203', '224123456', '224112234'];
  var listNim = [...nim];
  print(listNim);

  print("Tambahan Kode Langkah 4");
  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  print("Tambahan Kode Langkah 5");
  var login = 'User'; //rubah jika akan menggunakan kondisi lain
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
    if (login == 'Admin') 'Settings',
    if (login == 'User') 'Profile'
  ];
  print(nav2);

  print("Tambahan Kode Langkah 6");
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
