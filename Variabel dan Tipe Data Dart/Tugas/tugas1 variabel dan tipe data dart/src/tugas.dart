import 'dart:io';

void main(List<String> args) {
  //meminta user untuk menginputkan nama
  stdout.write("Masukkan Nama Anda    : ");
  String? nama_karyawan = stdin.readLineSync();

  //meminta user untuk menginputkan berapa jam dia bekerja
  stdout.write("Berapa Jam Anda Bekerja   : ");
  int jam_kerja = int.parse(stdin.readLineSync()!);


  //meminta user untuk menginputkan berapa upah per jam yang didapatkan
  stdout.write("Berapa Upah Per Jam Yang Anda Dapatkan    : ");
  double? upah_per_jam = double.parse(stdin.readLineSync()!);

  //meminta user untuk menginputkan status karyawannya 
  //jika user merupakan karyawan tetap maka yang diinputkan adalah true
  //jika user merupakan karyawan kontrak maka yang diinputkan adalah false
  stdout.write("Apa Status Karyawan Anda.(True = pegawai tetap False = pegawai kontrak) : ",);
  bool? status_karyawan = bool.parse(stdin.readLineSync()!);

  //nilai pajak berubah-ubah sesuai dengan status karyawan 
  //jika karyawan merupakan pekerja tetap maka pajak nya bernilai 10% atau 0.1
  //jika karyawan merupakan pekerja kontrak maka pajaknya bernilai 5% atau 0.05
  double pajak = ((status_karyawan) ? (0.1) : (0.05));

  double gaji_kotor = jam_kerja * upah_per_jam;

  //rumus gaji bersih = gaji kotor - gaji_kotor * pajak
  double gaji_bersih = (gaji_kotor - (gaji_kotor * pajak));

  print("======= DATA KARYAWAN ============");
  print("Nama Karyawan    : $nama_karyawan");
  print("Gaji Kotor       : $gaji_kotor");
  print("Pajak            : ${pajak * 100} %");
  print("Gaji Bersih      : $gaji_bersih");
}
