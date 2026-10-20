import 'package:get/get.dart';
//bekas model import 'package:project_flutter_pertama/model/product_model.dart';

class ListProductDetailController extends GetxController {
  late String namaProduk;
  late String harga;
  late String deskripsi;
  late String imageUrl;
  late String namaToko;
  late String review;
  late String rating;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['nama'];
    imageUrl = arguments['gambar'];
    namaToko =arguments['namaToko'];
    harga = arguments['harga'];
    deskripsi = arguments['deskripsi'];
    rating = arguments['rating'];
    review = arguments['review'];
  }
}