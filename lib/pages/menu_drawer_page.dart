import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/controller/menu_drawer_controller.dart';

import 'list_product_page.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});

  final menucontoller = Get.put(MainMenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Menu Drawer',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 1, 
      ),
      drawer: Drawer(
        backgroundColor: Colors.white, 
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blueAccent, 
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Navigation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold, 
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blueAccent), 
              title: const Text('Home', style: TextStyle(fontSize: 16)), 
              onTap: () {
                menucontoller.changePage(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.history, color: Colors.blueAccent),
              title: const Text('History', style: TextStyle(fontSize: 16)),
              onTap: () {
                menucontoller.changePage(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.blueAccent),
              title: const Text('Profile', style: TextStyle(fontSize: 16)),
              onTap: () {
                menucontoller.changePage(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: menucontoller.selectedIndex.value,
          children: menucontoller.listPages,
        ),
      ),
    );
  }
}