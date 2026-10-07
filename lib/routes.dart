import 'package:get/get.dart';
import 'package:project_flutter_pertama/pages/confirm_registration_page.dart';
import 'package:project_flutter_pertama/pages/list_product_page.dart';
import 'package:project_flutter_pertama/pages/registration_page.dart';

class Routes {
  // list halaman yang ada didalam aplikasi 
  static const String registration = "/registration";
  static const String confrimRegistration = "/confrimRegistration";
  static const String listProduct = "/listProduct";



  // ditampung kedalam array yang akan dipasang ke main.dart
  static final myPages = [
    GetPage(name: registration, page: ()=> RegistrationPage()),
    GetPage(name: confrimRegistration, page: ()=> ConfirmRegistrationPage()),
    GetPage(name: listProduct, page: ()=> ListProductPage()),
  ];


}