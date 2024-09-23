# Tugas Praktikum
1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!
**Jawab :** Sudah dilakukan pada proses sebelumnya
<br />

2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
**Jawab :** Functions di Dart adalah blok kode yang dapat dieksekusi dan digunakan untuk menyelesaikan tugas tertentu. Functions dapat menerima parameter, melakukan operasi, dan mengembalikan nilai. Dengan menggunakan functions, kita dapat mengorganisir kode menjadi bagian-bagian yang lebih kecil dan lebih mudah dikelola.
<br />

3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
**Jawab :** 
    a. **Positional Parameters**: Parameter yang harus diberikan dalam urutan yang sama saat memanggil function.  
    ```dart
        void greet(String name) {
            print('Hello, $name!');
        }
    ```
    b. **Optional Positional Parameters**: Parameter yang dapat diabaikan. Didefinisikan dengan menggunakan tanda kurung kotak.
    ```dart
    void greet(String name, [String? title]) {
        if (title != null) {
            print('Hello, $title $name!');
        } else {
            print('Hello, $name!');
        }
    }
    ```
    c. **Named Parameters**: Parameter yang dapat dipanggil dengan nama. Didefinisikan dengan menggunakan tanda kurung kurawal.
    ```dart
    void greet({required String name, String? title}) {
        if (title != null) {
            print('Hello, $title $name!');
        } else {
            print('Hello, $name!');
        }
    }
    ```

<br />

4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
**Jawab :** Functions di Dart diperlakukan sebagai first-class objects, yang berarti functions dapat diperlakukan seperti objek lainnya: dapat disimpan dalam variabel, dikirim sebagai parameter ke function lain, dan dikembalikan sebagai hasil dari function.
    ```dart
    void main() {
        var add = (int a, int b) => a + b;
        print(add(2, 3)); // Output: 5
    }
    ```
   
<br />

5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
**Jawab :** Anonymous functions adalah functions tanpa nama yang didefinisikan secara langsung dalam ekspresi. Mereka sering digunakan sebagai callback.
    ```dart
    void main() {
        var list = [1, 2, 3];
        list.forEach((item) {
            print(item);
        });
    }
    ```
<br />

6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
**Jawab :** 
    a. Lexical Scope: Konsep di mana variabel hanya dapat diakses dalam blok kode tempat variabel itu didefinisikan.
    ```dart
    void main() {
        var x = 10;
        void inner() {
            print(x); // x dapat diakses
        }
        inner();
    }
    ```
    <br/>
    
    b. Lexical Closures: Situasi di mana function memiliki akses ke variabel di luar lingkupnya, meskipun function tersebut dipanggil di luar lingkup tersebut.
    ```dart
    Function makeCounter() {
        var count = 0;
        return () {
            count++;
            return count;
        };
    }

    void main() {
        var counter = makeCounter();
        print(counter()); // Output: 1
        print(counter()); // Output: 2
    }
    ```
<br />

7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
**Jawab :** Mengembalikan beberapa nilai dari function menggunakan tuple atau objek.
    ```dart
    (int, int) divide(int a, int b) {
    return (a ~/ b, a % b);
    }

    void main() {
    var result = divide(10, 3);
    print('Quotient: ${result.$1}, Remainder: ${result.$2}');
    }
    ```
<br />
   
8. Kumpulkan berupa link commit repo GitHub pada tautan yang telah disediakan di grup Telegram!
**Jawab :** https://github.com/reysilvaa/prog-mobile/

<br />