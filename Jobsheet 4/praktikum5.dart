void main() {
  var record = (first: 'first', a: 2, b: 10, last: 'last');
  print(record);
  
  var menukar = tukar((record.a, record.b));
  
  record = (first: record.first, a: menukar.$1, b: menukar.$2, last: record.last);
  print("\nSetelah Ditukar : \na: ${record.a}, b: ${record.b}");

  // Inisialisasi field nama dan NIM
  (String, int) mahasiswa = ('Nama Anda', 123456789);
  print(mahasiswa);

  // Menambahkan kode program
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'

  mahasiswa2 = ('Moch Reynald Silva Baktiar', a: 2241720203, b: true, 'last');
  print("\nSetelah diganti: ");
  print(mahasiswa2.$1);
  print(mahasiswa2.a); 
  print(mahasiswa2.b);
  print(mahasiswa2.$2); 
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
