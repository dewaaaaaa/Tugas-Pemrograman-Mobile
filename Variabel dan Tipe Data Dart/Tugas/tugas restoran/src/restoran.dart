import 'dart:io';

void main(List<String> args) {
  print("SELAMAT DATANG DI RESTORAN KAMI ");
  print("=================================\n");

  Map<String, Map<String, int>> menu_makanan = {
    "Makanan": {
      "Nasi Goreng": 25000,
      "Mie Goreng": 23000,
      "Ayam Goreng": 30000,
    },
    "Minuman": {"Pop Ice": 15000, "Le Minerale": 10000, "Es Jeruk": 16000},
  };

  //variabel untuk menampung pesanan pelanggan
  List<Map<String, dynamic>> pesanan = [];

  // Tampilkan daftar menu
  print("=== Daftar Menu ===\n");
  menu_makanan.forEach((kategori, daftarItem) {
    print("$kategori:");
    daftarItem.forEach((nama, harga) {
      print("  $nama : Rp$harga");
    });
    print("");
  });

  // Perulangan input pesanan
  bool lanjutPesan = true;

  while (lanjutPesan) {
    String? input;
    bool menuDitemukan = false;
    String? namaMakanan;
    int? hargaMakanan;

    // menginput jenis menu
    //pelanggan memasukkan input teks seperti pada menu yang ditampilkan
    //contohnya "nasi goreng"
    do {
      stdout.write("\nMasukkan menu yang ingin dipesan: ");
      input = stdin.readLineSync();

      if (input != null && input.isNotEmpty) {
        menu_makanan.forEach((_, daftarItem) {
          daftarItem.forEach((nama, harga) {
            if (input!.toLowerCase().trim() ==
                nama.toLowerCase()) //mencocokkan format input dengan menu yang ada lalu dilakukan perbandingan apakah input yang dimasukkan ada pada daftar mebu
            {
              menuDitemukan =
                  true; //setelah pencocokan format dan menu dan input sama maka menu ditemukan
              namaMakanan = nama;
              hargaMakanan = harga;
            }
          });
        });

        if (!menuDitemukan) {
          print("Menu tidak ditemukan. Silakan coba lagi.");
        }
      }
    } while (!menuDitemukan);

    int jumlah = 0;
    bool jumlahValid = false;

    //penginputan jumlah untuk menu yang sedang dipesan
    do {
      stdout.write("Berapa banyak $namaMakanan yang Anda inginkan: ");
      String? jumlahInput = stdin.readLineSync();

      //dikarenakan jumlah input merupakan sebuah angka perlu error handling jika jumlah yang diinputadalah sebuah karakter bukan angka
      try {
        if (jumlahInput != null) {
          jumlah = int.parse(jumlahInput);
          if (jumlah > 0) {
            jumlahValid = true;
          } else {
            print("Jumlah harus lebih dari 0. Silakan coba lagi.");
          }
        }
      } catch (e) {
        print("Input tidak valid. Masukkan angka saja.");
      }
    } while (!jumlahValid);

    // Tambahkan ke daftar pesanan
    pesanan.add({"nama": namaMakanan, "harga": hargaMakanan, "jumlah": jumlah});

    //menanyakan apakah pelanggan masih ingin memesan
    stdout.write("Apakah Anda ingin memesan lagi? (y/n): ");
    String? jawab = stdin.readLineSync();
    if (jawab == null || jawab.toLowerCase() != 'y') {
      lanjutPesan = false;
    }
  }

  //menampilkan rincian pesanan
  print("\n=== RINCIAN PESANAN ANDA ===");
  int totalBayar = 0;

  for (var item in pesanan) {
    String nama = item['nama'];
    int harga = item['harga'];
    int jumlah = item['jumlah'];
    int totalPermenu = harga * jumlah;

    print("$jumlah x $nama = Rp$totalPermenu");
    totalBayar += totalPermenu;
  }

  print("-------------------------------");
  print("Total yang harus dibayar: Rp$totalBayar");

  print("Silahkan Untuk Melakukan Pembayaran ");

  bool pembayaranBerhasil = true;
  int uang = 0;
  bool pesananBerhasil = true;

  do {
    stdout.write(
      "Berikan nominal uang yang akan anda berikan untuk melakukan pembayaran : ",
    );
    String? inputUang = stdin.readLineSync();

    if (inputUang != null) {
      try {
        uang = int.parse(inputUang);
      } catch (e) {
        print("Input tidak valid, masukkan angka saja.");
        pembayaranBerhasil = false;
        continue;
      }
    }

    if (uang < totalBayar) {
      print("Mohon Maaf, uang yang anda berikan tidak cukup ");
      pembayaranBerhasil = false;
      stdout.write("Apakah anda masih ingin melanjutkan pembayaran : (y/n) ");
      String? lanjut = stdin.readLineSync();

      if (lanjut != null && lanjut.toLowerCase() == 'n') {
        pesananBerhasil = false;
        break;
      }
    } else {
      print("Pembayaran berhasil, terima kasih!");
      pembayaranBerhasil = true;
    }
  } while (pembayaranBerhasil == false);

  if (pesananBerhasil == true) {
    print("Total uang yang anda berikan : Rp. $uang");
    print("Kembalian : Rp.${uang - totalBayar}");

    print("Terima kasih telah memesan!");
  } else {
    print("Pesanan yang anda lakukan tidak berhasil");
  }
}
