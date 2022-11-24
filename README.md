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



# TUGAS 9

### Apa bisa mengambul data JSON tanpa membuat model?

Bisa, namun bisa saja terjadi kasus dimana data yang ingin diambil tidak sesuai atau tidak sinkron dengan model data yang diinginkan. Tentu saja hal iini tidak lebih baik dibandingkan dengan membuat model terlebih dahulu dalam melakukan pengambilan data JSON.


### Widgert yang digunakan
Column untuk membuat komponen di dalamnya teratur seperti sebuah kolom, row agar komponen di dalamnya berbaris, text untuk menampilkan text data-data yang telah diambil, boxdecoration untuk melakukan design kepada container, textstyle untuk styling tetx, listview untuk list widget, future builder untuk generate widgets dari satu snapshot, roundedrectangleborder untuk styling sisi border jadi rounded, align untuk alignment, padding untuk membuat space kosong, card untuk menampilkan data dalam bentuk card, dll

### Mekanisme pengamblan data dari json

* Menambahkan dependensi http dengan perintah flutter pub add http
* Membuat function http request GET sebagai mekanisme pengubahan response menjadi type json
* Membuat model
* Melakukan method GET
* Membuat widget futureBuilder untuk menampilkan data


### Implementasi

1. Menambahkan dependency http
2. Menambahkan halaman myWatchListPage untuk persiapan page data mywatchList, agar bisa didaftarkan ke tombol navigasi di drawer
3. Membuat model untuk my watch list
4. Fetch data json dari tugas mywatchlist sebelumnya
5. Mengimplementasikan data watchlist yang telah diambil pada page myWatchListPage dengan bentuk card. 
6. Mengambil semua data watchlist ke dalam detail page
7. Mengaktifkan tombol onTap pada card agar bisa redirect ke halaman detail

