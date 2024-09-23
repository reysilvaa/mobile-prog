### Soal 1
Modifikasilah kode pada baris 3 di VS Code atau Editor Code favorit Anda berikut ini agar mendapatkan keluaran (output) sesuai yang diminta!
```dart
void main() {
  for (int i = 0; i < 10; i++) {
    print('hello ${1 + 2}');
  }
}
```

Output yang diminta:



```
Nama saya adalah Fulan, sekarang berumur 18 
Nama saya adalah Fulan, sekarang berumur 17 
Nama saya adalah Fulan, sekarang berumur 16 
Nama saya adalah Fulan, sekarang berumur 15 
Nama saya adalah Fulan, sekarang berumur 14 
Nama saya adalah Fulan, sekarang berumur 13 
Nama saya adalah Fulan, sekarang berumur 12 
Nama saya adalah Fulan, sekarang berumur 11 
Nama saya adalah Fulan, sekarang berumur 10 
Nama saya adalah Fulan, sekarang berumur 9
```

Jawaban :

Code :
```dart
void main() {
  for (int i = 18; i >= 9; i--) {
    print('Nama Saya Adalah Reynald, Sekarang saya berumur ${i}');
  }
}
```
Output :
```
Nama Saya Adalah Reynald, Sekarang saya berumur 18
Nama Saya Adalah Reynald, Sekarang saya berumur 17
Nama Saya Adalah Reynald, Sekarang saya berumur 16
Nama Saya Adalah Reynald, Sekarang saya berumur 15
Nama Saya Adalah Reynald, Sekarang saya berumur 14
Nama Saya Adalah Reynald, Sekarang saya berumur 13
Nama Saya Adalah Reynald, Sekarang saya berumur 12
Nama Saya Adalah Reynald, Sekarang saya berumur 11
Nama Saya Adalah Reynald, Sekarang saya berumur 10
Nama Saya Adalah Reynald, Sekarang saya berumur 9

Exited.
```

