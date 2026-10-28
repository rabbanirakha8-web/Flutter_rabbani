import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:project_flutter_pertama/controller/main_menu_controller.dart';


class MainMenuPage extends StatelessWidget {
   MainMenuPage({super.key});

   final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body : IndexedStack(index: menuController.selectedIndex.value,
      children: menuController.listPages // mengurutkan
      ),
      bottomNavigationBar: BottomNavigationBar
      (
        currentIndex: menuController.selectedIndex.value,
        onTap : menuController.changePage,
        items : 
        [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ]),
    ));
  }
}