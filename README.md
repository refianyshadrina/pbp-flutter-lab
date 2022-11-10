## Stateless Widget & Stateful Widget

Stateful widget adalah widget yang dapat berubah-ubah ketika user berinteraksi. Contohnya adalah checkbox, radio, form, dan lain-lain. 

Sementara itu, stateless widget tidak pernah berubah. Contohnya adalah text, icon, iconbutton, dan lainnya.


## Widget yang digunakan

- `Text` : Untuk menuliskan text GANJIL dan GENAP
- `Row` : Untuk mengatur elemen-elemen yang ditambahkan sejajar dalam bentuk baris
- `FloatingActionButton` : Button untuk berinteraksi dengan user yang terhubung dengan Text (Ganjil dan Genap) melalui fungsi increment dan decrement.
- `Column` : Mengatur elemen untuk tersusun dalam kolom (ke bawah)
- `Appbar` : Menampilkan app bar aplikasi


## Fungsi dari setstate() dan variabel yang terdampak

Setstate akan memberikan notifikasi bahwa terdapat internal state yang berubah. Internal state yang berubah mengakibatkan adanya re-build widget tree sehingga saat state yang sedang ditampilkan adalah state yang berubah tersebut, maka tampilan pada widget akan berubah juga. (Contoh : _counter)


## Perbedaan const dan final

`Const` : Harus sudah diketahui value nya saat compile time
`Final` : Tidak harus diketahui value nya saat compile time


## Implementasi

* Membuat program flutter dengan perintah `flutter create counter_7`
* Membuat function _decrementCounter untuk disambungkan kepada tombol remove
* Membuat button untuk memanggil fungsi _decrementCounter
* Dua button yang akan ditambahkan adalah add dan remove, dan diatur dalam barisan (Row). Jika counternya masih 0, maka tombol remove disembunyikan.
* Menyesuaikan warna text ganjil dan genap sesuai angka
