import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/controller/list_gadget_controller.dart';
import 'package:project_flutter_pertama/pages/detail_gadget_page.dart';
import 'package:project_flutter_pertama/routes.dart';


class GadgetPage extends StatelessWidget {
  
  final GadgetController controller = Get.put(GadgetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Gadget')),
      body: Obx(() {
      
        
        return ListView.builder(
          itemCount: controller.gadgetList.length,
          itemBuilder: (context, index) {
            final gadget = controller.gadgetList[index];
            
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Image.network(
                  gadget.image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  gadget.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text('\$${gadget.price}'),
                trailing: const Icon(Icons.chevron_right),
               onTap: () {
  
  Get.to(
    () => DetailGadgetPage(),
    arguments: {
      'namaProduk': gadget.title,
      'hargaProduk': '\$${gadget.price}',
      'imageProduk': gadget.image,
      'deskripsiProduk': gadget.description,
      'reviewProduk': '${gadget.rating.rate} (${gadget.rating.count} ',
      'spesifikasiProduk': 'Kategori: ${gadget.category}', 
    },
  );
},
              ),
            );
          },
        );
      }),
    );
  }
}