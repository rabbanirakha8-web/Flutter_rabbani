import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:project_flutter_pertama/models/gadget_model.dart';
// import 'path_ke_file_model/gadget_model.dart';

class GadgetController extends GetxController {
  var isLoading = true.obs;
  var gadgetList = <GadgetModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchGadgets(); 
  }

  void fetchGadgets() async {
    try {
      isLoading(true);
      
      final url = Uri.parse('https://fakestoreapi.com/products/category/electronics');
      final response = await http.get(url);
      
      if (response.statusCode == 200) {

        Get.snackbar("berhasil memuat data gadget", "Data gadget berhasil dimuat");
       
        gadgetList.value = gadgetModelFromJson(response.body);
      } else {
        Get.snackbar("gagal", "cek internet connection");
      }
    } catch (e) {
      Get.snackbar("gagal", "Terjadi kesalahan: $e");
    } 
  }
}