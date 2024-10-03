
#### Nama    : Moch Reynald Silva Baktiar
#### NIM     : 2241720203
#### Kelas   : TI3B


# hello world

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Laporan Praktikum
### Praktikum 1 Membuat Project Flutter Baru
#### Langkah 1
```text
Membuat "Flutter: New Application Project" pada Visual Studio Code.
```

![alt text](image\newproject.png)

#### Langkah 2
```text
Select a folder to create the project in.
```

![alt text](image\folderproject.png)

#### Langkah 3
```text
Memberikan nama pada project "hello_world". 
```

![alt text](image/nameproject.png)

#### Langkah 4
```text
Project flutter berhasil dibuat. 
```

![alt text](image/projectsudah.png)

### Praktikum 3 Membuat Repository GitHub dan Laporan Praktikum
#### Langkah 1 - 10
```text
Saya lupa mengambil gambar langkah 1-10
```

#### Langkah 11
```text
Mencoba running project hello_world.
```

![alt text](image/runproject.png)

#### Langkah 12
```text
Saya lupa mengambil gambar langkah 1-10
```

### 📄 Dokumentasi Praktikum 4 dan 5 
##### Tugas Pratikum Soal No. 3
- [Praktikum 4: Penggunaan State di Flutter](Laporan%20Praktikum/praktikum_4.md)
- [Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino](Laporan%20Praktikum/praktikum_5.md)


### Tugas Praktikum Soal No. 4
#### Langkah 3 Membuat Project
```text
Tambahkan Pubspec.yaml seperti ini:
```
```dart
environment:
  sdk: '>=2.19.4 <4.0.0'

dependencies:
  flutter:
    sdk: flutter

  english_words: ^4.0.0
  provider: ^6.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter

  flutter_lints: ^2.0.0

flutter:
  uses-material-design: true
```

```text
Tambahkan code ini didalam analysis_options.yaml
```
```dart
include: package:flutter_lints/flutter.yaml

linter:
  rules:
    prefer_const_constructors: false
    prefer_final_fields: false
    use_key_in_widget_constructors: false
    prefer_const_literals_to_create_immutables: false
    prefer_const_constructors_in_immutables: false
    avoid_print: false
```

```text
bikin main_codelab.dart didalam lib lalu tambahkan code ini
```
```dart
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return Scaffold(
      body: Column(
        children: [
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
        ],
      ),
    );
  }
}
```

#### Langkah 4 Menambahkan Tombol

run hasil dari `main.dart`

![alt text](image/addbutton.png)

Di bagian bawah `lib/main.dart`, tambahkan sesuatu pada string di objek Text pertama

![alt text](image/awesome.png)

```text
menambahkan button next
```
![alt text](image/button1.png)

```text
jika kita klik button next akan menghasilkan acak
```
![alt text](image/button2.png)

#### Langkah 5 Memperindah Tampilan Aplikasi
```text
lalu menambahkan bigcard
```
![alt text](image/extractwidget.png)

```text
menambahkan kartu
```
![alt text](image/padding.png)

```text
mempercantik hasil dari card
```
![alt text](image/card.png)

```text
memberikan warna hasilnya
```
![alt text](image/warnacard.png)

```text
memberikan text dan memperbesar text
```
![alt text](image/textsize.png)

```text
memberikan text menjadi center
```
![alt text](image/textcenter.png)

```text
Menempatkan UI di tengah
```
![alt text](image/centering.png)

```text
satu UI menjadi center di tengah layar
```
![alt text](image/center.png)

```text
menghilangkan take Awesome dan membesarkan hasilnya
```
![alt text](image/removetextawesome.png)

#### Langkah 6 Menambahkan Fungsi
```text
Elevated Button
```
![alt text](image/elevatedbutton.png)

```text
menambahkan button like dan beserta iconnya
```
![alt text](image/like.png)

#### Langkah 7 Menambahkan Kolom Samping Navigasi
```text
menambahkan Sidebar, lalu terdapat home dan like. Dan terdapat background warna kulit untuk isinya.
``` 
![alt text](image/sidebar.png)

```text
bisa klik button like di sidebar atau sudah bisa pindah saat diklik
```
![alt text](image/workednewtabindex.png)

```text
saat klik icon yang didalam sidebar isinya akan berubah
```
![alt text](image/placeholder.png)

```text
tampilan menjadi responsif 
```
![alt text](image/responsive.png)

#### Langkah 8 Menambahkan halama baru
```text
yang kita like akan tersimpan di sidebar like.
```
![alt text](image/favoritepage.png)