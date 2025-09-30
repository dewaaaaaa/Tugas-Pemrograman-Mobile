# TUGAS PRAKTEK - VARIABEL DAN CONDITIONAL STATEMENT

- **Nama :** Dewa Maulana
- **NPM :** 07352311085

---

## 📖 Penjelasan Program

Program ini ditulis dengan bahasa **Dart**.  
Tujuannya adalah untuk meminta pengguna memasukkan skor (nilai) antara **1 sampai 100**, kemudian menentukan **grade** berdasarkan skor tersebut.

### Alur Program

1. Program meminta pengguna memasukkan skor.
2. Input dicek:
   - Jika kosong atau bukan angka → tampil pesan error dan ulangi input.
   - Jika angka tetapi di luar range (kurang dari 1 atau lebih dari 100) → tampil pesan error dan ulangi input.
3. Jika input valid → nilai disimpan ke variabel `angka`.
4. Program menentukan grade sesuai ketentuan:
   - `85 - 100` → Grade A
   - `70 - 84` → Grade B
   - `60 - 69` → Grade C
   - `50 - 59` → Grade D
   - `< 50` → Grade E
5. Program menampilkan skor yang dimasukkan dan grade yang diperoleh.

---

## ▶️ Cara Menjalankan Program

1. Pastikan sudah menginstal **Dart SDK** di komputer.
2. Simpan kode program ke dalam file dengan nama `tugas.dart`.
3. Buka terminal / command prompt, masuk ke folder tempat file disimpan.
4. Jalankan perintah:
   ```bash
   dart run tugas.dart
   ```
