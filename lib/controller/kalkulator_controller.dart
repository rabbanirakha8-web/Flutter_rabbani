import 'package:get/get.dart';


class KalkulatorController extends GetxController {


var hasilHitung = 0.0.obs;



  void tambah(double angka1, double angka2) {
    double hasilTambah = angka1 + angka2;
    hasilHitung.value = hasilTambah;  
     Get.snackbar(
      "hasil jumlah",
      "${hasilTambah.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

   void kurang(double angka1, double angka2) {
    double hasilKurang = angka1 - angka2;
    hasilHitung.value = hasilKurang;
     Get.snackbar(
      "hasil kurang",
      "${hasilKurang.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

   void kali(double angka1, double angka2) {
    double hasilKali = angka1 * angka2;
    hasilHitung.value = hasilKali;
     Get.snackbar(
      "hasil kali",
      "${hasilKali.toString()}",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(double angka1, double angka2) {
    if (angka2 != 0 && angka1 != 0) {
      double hasilBagi = angka1 / angka2;
      hasilHitung.value = hasilBagi;
      Get.snackbar(
        "hasil bagi",
        "${hasilBagi.toString()}",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      Get.snackbar(
        "Error",
        "Tidak bisa membagi dengan nol coba ganti angka lain",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

   
}