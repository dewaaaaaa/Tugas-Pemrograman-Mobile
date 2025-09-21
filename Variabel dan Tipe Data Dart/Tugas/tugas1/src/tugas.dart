void main(List<String> args) {
  String nama_karyawan = "Dewa Maulana";
  int jam_kerja = 62;
  double upah_per_jam = 25.000;
  bool status_karyawan = true;

  double pajak = 0.1;// pajak 10% atau 0.1 dikarenakan status karyawan adalah true

  double gaji_kotor = jam_kerja * upah_per_jam;

  //rumus gaji bersih = gaji kotor - gaji_kotor * pajak
  double gaji_bersih =(gaji_kotor - (gaji_kotor * pajak));

  print("======= DATA KARYAWAN ============");
  print("Nama Karyawan    : $nama_karyawan");
  print("Gaji Kotor       : $gaji_kotor");
  print("Pajak            : ${pajak * 100} %");
  print("Gaji Bersih      : $gaji_bersih");

}
