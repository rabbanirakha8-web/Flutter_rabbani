import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/menu/history_page.dart';
import 'package:project_flutter_pertama/menu/home_page.dart';
import 'package:project_flutter_pertama/menu/profile_page.dart';

class MainMenuController extends GetxController {

final RxInt selectedIndex = 0.obs;

void changePage(int index){
    selectedIndex.value = index;
}

 List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];

}