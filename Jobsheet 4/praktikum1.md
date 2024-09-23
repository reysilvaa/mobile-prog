# Praktikum 1: Eksperimen Tipe Data List
Selesaikan langkah-langkah praktikum berikut ini menggunakan VS Code atau Code Editor favorit Anda.

#### Langkah 1:
Ketik atau salin kode program berikut ke dalam void main().

```dart
void main(){
  var list = [1, 2, 3]; 
  assert(list.length == 3); 
  assert(list[1] == 2); 
  print(list.length); 
  print(list[1]); 
  
  list[1] = 1; 
  assert(list[1] == 1); 
  print(list[1]);
}
```
#### Langkah 2:
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

**Jawab** : Program Dart ini membuat list dengan tiga elemen: 1, 2, dan 3. Program memastikan panjang list adalah 3 dan elemen di index 1 adalah 2. Setelah mencetak panjang dan elemen tersebut, elemen di index 1 diubah menjadi 1 dan divalidasi kembali. Akhirnya, program mencetak elemen di index 1 yang sekarang adalah 1. Ini menunjukkan cara membuat, memodifikasi, dan memeriksa elemen dalam list.

#### Langkah 3:
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai
index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

**Kode :** 
```dart
void main() {
  final List list = [null, null, null, null, null]; 
  list[1] = 'Moch Reynald Silva Baktiar'; 
  list[2] = '2241720203'; 
  
  assert(list.length == 5);
  assert(list[1] == 'Moch Reynald Silva Baktiar');
  assert(list[2] == '2241720203');

  print(list);
}
```
**Jawab :** Kode Dart ini membuat list dengan lima elemen null, mengisi indeks ke-1 dengan nama dan ke-2 dengan NIM, lalu memverifikasi panjang dan nilai list. Output yang dicetak adalah
```dart
[null, Moch Reynald Silva Baktiar, 2241720203, null, null]
```





