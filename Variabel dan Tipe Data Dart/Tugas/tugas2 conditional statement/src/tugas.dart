import 'dart:io';

void main() {
  double angka; // akan diisi setelah valid
  String grade;

  // Loop sampai user memasukkan skor valid (1 - 100)
  while (true) {
    stdout.write("Masukkan skor Anda (1 - 100): ");
    final input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("❌ Input kosong. Coba lagi.\n");
      continue;
    }

    try {
      final nilai = double.parse(input);

      // Validasi range 1 - 100 (inklusif)
      if (nilai < 1 || nilai > 100) {
        print("Range skor harus 1 sampai 100.");
        continue; // minta input ulang jika tidak sesuai dengan range yang diberikan
      }

      angka = nilai; // jika nilai valid maka akan disimpan
      break;
    } catch (e) {
      print(" Input tidak valid! Harus berupa angka.\n");
    }
  }

  // Penentuan grade (tanpa celah untuk angka desimal)
  if (angka >= 85 )//KARNA NILAI INPUT SUDAH DIBATASI HANYA MENJADI 100 HINGGA RANGE NYA MENJADI 85 - 100
  {
    grade = 'A';
  } 
  else if (angka >= 70) //RANGE MULAI DARI 70-84
  {
    grade = 'B';
  } 
  else if (angka >= 60) //RANGE MULAI DARI 60-69
  {
    grade = 'C';
  } 
  else if (angka >= 50) //RANGE MULAI DARI 50 - 59
  {
    grade = 'D';
  } 
  else //RANGE MULAI DARI 50 KEBAWAH 
  {
    grade = 'E';
  }

  print("Skor Anda : $angka");
  print("Grade Anda : $grade");
}
