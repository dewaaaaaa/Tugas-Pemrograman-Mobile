# Identitas Mahasiswa

Nama : Dewa Maulana

NPM : 07352311085

Kelas : 5IF2

# 🍽️ Program Pemesanan Restoran

Program ini merupakan aplikasi berbasis **Command Line Interface (CLI)** yang dibuat menggunakan bahasa **Dart**.  
Tujuan dari program ini adalah untuk **mensimulasikan proses pemesanan makanan dan minuman di restoran**, mulai dari pemilihan menu hingga proses pembayaran.

---

## 🧩 Deskripsi Program

Program ini berjalan secara interaktif di terminal.  
Ketika dijalankan, program akan menampilkan daftar menu makanan dan minuman yang tersedia.  
Pengguna diminta memilih menu yang ingin dipesan dengan mengetikkan nama menu sesuai daftar.  
Setelah itu, pengguna memasukkan jumlah pesanan yang diinginkan.

Setiap pesanan yang dimasukkan akan disimpan ke dalam daftar pesanan.  
Program akan terus menanyakan apakah pengguna ingin menambah pesanan lainnya.  
Jika pengguna selesai memesan, program akan menghitung **total harga seluruh pesanan** dan menampilkan rincian pembelian.

Selanjutnya, pengguna diminta memasukkan **nominal uang pembayaran**.  
Program akan memeriksa apakah uang yang diberikan mencukupi:

- Jika **uang kurang**, pengguna diberi pilihan untuk melanjutkan pembayaran atau membatalkan pesanan.
- Jika **uang cukup atau lebih**, pembayaran dianggap berhasil dan program menampilkan jumlah kembalian.

Setelah transaksi selesai, program menampilkan pesan terima kasih dan proses berakhir.

---

## ⚙️ Logika dan Fitur Utama

- **Menampilkan daftar menu** makanan dan minuman dengan harga.
- **Menerima input pengguna** untuk memilih menu dan jumlah pesanan.
- **Validasi input** agar hanya angka yang diterima pada jumlah dan nominal pembayaran.
- **Perhitungan otomatis total harga** dari seluruh pesanan.
- **Simulasi pembayaran** dengan pengecekan kecukupan uang dan perhitungan kembalian.
- **Opsi pembatalan pesanan** jika pembayaran tidak dilanjutkan.

---

## 🚀 Cara Menjalankan Program

1. Pastikan **Dart SDK** sudah terinstal di komputer Anda.
2. Simpan file program dengan nama `restoran.dart`.
3. Jalankan program melalui terminal dengan perintah:
   ```bash
   dart run restoran.dart
   ```
