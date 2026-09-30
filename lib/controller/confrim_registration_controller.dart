import 'package:get/get.dart';

class ConfrimRegistrationController extends GetxController{

  late String nama;
  late String alamat;
  late String phone;
  late String email;
  late String jenisKelamin;

  // get alamat => null;


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;//menangkap data dari tampilan sebelumnya
    nama = arguments['name'];
    alamat = arguments['alamat'];
     phone = arguments['phone'];
     email = arguments['email'];
    jenisKelamin = arguments['jenis_kelamin'];

  }
}