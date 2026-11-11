import 'package:get/get.dart';

class DetailGadgetController extends GetxController {

  String namaProduk = 'Tanpa Nama';
  String hargaProduk = '\$0';
  String imageProduk = '';
  String deskripsiProduk = 'Tidak ada deskripsi.';
  String reviewProduk = '-';
  String spesifikasiProduk = '-';

  @override
  void onInit() {
    super.onInit();

   
    final Map<String, dynamic> data = Get.arguments;

    namaProduk = data['namaProduk'] ?? 'Tanpa Nama';
    hargaProduk = data['hargaProduk'] ?? '\$0';
    imageProduk = data['imageProduk'] ?? '';
    deskripsiProduk = data['deskripsiProduk'] ?? 'Tidak ada deskripsi.';
    reviewProduk = data['reviewProduk'] ?? '-';
    spesifikasiProduk = data['spesifikasiProduk'] ?? '-';
  }
}