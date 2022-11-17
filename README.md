# TUGAS 7


### Stateless Widget & Stateful Widget

Stateful widget adalah widget yang dapat berubah-ubah ketika user berinteraksi. Contohnya adalah checkbox, radio, form, dan lain-lain. 

Sementara itu, stateless widget tidak pernah berubah. Contohnya adalah text, icon, iconbutton, dan lainnya.


### Widget yang digunakan

- `Text` : Untuk menuliskan text GANJIL dan GENAP
- `Row` : Untuk mengatur elemen-elemen yang ditambahkan sejajar dalam bentuk baris
- `FloatingActionButton` : Button untuk berinteraksi dengan user yang terhubung dengan Text (Ganjil dan Genap) melalui fungsi increment dan decrement.
- `Column` : Mengatur elemen untuk tersusun dalam kolom (ke bawah)
- `Appbar` : Menampilkan app bar aplikasi


### Fungsi dari setstate() dan variabel yang terdampak

Setstate akan memberikan notifikasi bahwa terdapat internal state yang berubah. Internal state yang berubah mengakibatkan adanya re-build widget tree sehingga saat state yang sedang ditampilkan adalah state yang berubah tersebut, maka tampilan pada widget akan berubah juga. (Contoh : _counter)


### Perbedaan const dan final

`Const` : Harus sudah diketahui value nya saat compile time
`Final` : Tidak harus diketahui value nya saat compile time


### Implementasi

* Membuat program flutter dengan perintah `flutter create counter_7`
* Membuat function _decrementCounter untuk disambungkan kepada tombol remove
* Membuat button untuk memanggil fungsi _decrementCounter
* Dua button yang akan ditambahkan adalah add dan remove, dan diatur dalam barisan (Row). Jika counternya masih 0, maka tombol remove disembunyikan.
* Menyesuaikan warna text ganjil dan genap sesuai angka



# TUGAS 8

### Perbedaan Navigator.push dan Navigator.pushReplacement

Navigator.push melakukan navigasi kepada route/page baru dengan penambahan page pada top of stack. Sementara itu, navigator.pushReplacement akan melakukan push route/page baru dengan replacement, yaitu terlebih dahulu menghilangkan page terbaru dan menggantinya dengan page yang paling baru. 


### Widget yang digunakan

1. `Container` : Untuk mengatur posisi atau size dari widgets

2. `Row` : Untuk mengatur align children dalam barisan

3. `Icon` : Memberikan icon

4. `Column` : Untuk mengatur align children dalam kolom 

5. `Scaffold` : Untuk mengatur struktur app yang termasuk di dalamnya adalah AppBar, Drawer, dll.

6. `SingleChildScrollView` : Untuk memberikan akses scroll kepada childnya.

7. `TextFormField` : Adalah sebuah form field untuk menginput tipe text

8. `DropdownButton` : Form field yang berfungsi untuk memberikan pilihan yang bisa di select sebagai input field

9. `AppBar` : Berfungsi sebagai komponen yang mengandung toolbar dll.

10. `Center` : Mengatur posisi child ke tengah-tengah

11. DLL


### Jenis-jenis event yang ada pada flutter

1. `onPressed`, 

2. `onChanged`, 

3. `onClicked`, 

4. `onTap`,

5. `onHover`, 

6. `onSaved`


### Cara kerja Navigator dalam mengganti halaman

Navigator berfungsi untuk membuat widget yang berdiri dengan basis prinsip stack history dari child widgets. Navigator dalam mengganti halaman akan bekerja dengan method push dan pop routes/pages untuk mengganti-ganti halaman. Push akan dilakukan ketika ingin berganti ke halaman baru, sementara itu pop dilakukan ketika ingin kembali ke halaman sebelumnya.


### Implementasi

1. Refactoring widget drawer

2. Menambahkan drawer.dart sebagai halaman untuk menavigasikan kepada berbagai macam page --> termasuk form dan display budget

3. Membuat models untuk budget

4. Membuat halaman form.dart sebagai form untuk pengisian budget. Pada halaman ini, ketika user menekan tombol simpan maka data akan disimpan ke list

5. Menyambungkan semua page dengan import-import package dan files

6. Membuat halaman displayBudget untuk menampilkan list yang ditambahkan melalui form.


