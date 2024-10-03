## Praktikum 4: Menerapkan Widget Dasar
Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### Langkah 1: Text Widget
Buat folder baru ``basic_widgets`` di dalam folder ``lib``. Kemudian buat file baru di dalam ``basic_widgets`` dengan nama ``text_widget.dart``. Ketik atau salin kode program berikut ke project ``hello_world`` Anda pada file ``text_widget.dart``.

```dart
import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Fulan, sedang belajar Pemrograman Mobile",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center);
  }
}
```
> [!WARNING]
> **Perhatian**: Gantilah teks **Fulan** dengan nama lengkap Anda.

Lakukan import file `text_widget.dart` ke `main.dart`, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file `README.md`.

!['Output](./image/1.png)

### Langkah 2: Image Widget
Buat sebuah file `image_widget.dart` di dalam folder `basic_widgets` dengan isi kode berikut.

```dart
import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("logo_polinema.jpg")
    );
  }
}
```
Lakukan penyesuaian asset pada file `pubspec.yaml` dan tambahkan file logo Anda di folder `assets` project `hello_world`.
```dart
flutter:
  assets:
     - logo_polinema.jpg
```

>[!WARNING]
> Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

!['Output](./image/2.png)


