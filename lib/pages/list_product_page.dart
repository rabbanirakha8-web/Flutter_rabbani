import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/controller/list_product_controller.dart';
import 'package:project_flutter_pertama/pages/detail_product_page.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});
  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Produk",style: TextStyle(
      fontWeight: FontWeight.bold, 
    ),),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 224, 143, 21),
      ),
      body: Container(
        color: const Color.fromARGB(255, 227, 213, 170), 
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listProduk.length,
          itemBuilder: (context, index) {
            final product = controller.listProduk[index];
            return Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  
                  Get.to(() => const DetailProductPage(), arguments: product);
                },
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: product.imageUrl.isNotEmpty
                        ? Image.network(
                            product.imageUrl,
                            width: 50,
                            height: 50,
                           
                          )
                        : const Icon(Icons.image, size: 50, color: Colors.grey),
                  ),

                  title: Text(
                    product.namaProduk,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blueGrey[900],
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Rp ${product.harga}",
                      style: const TextStyle(
                        color: Color.fromARGB(255, 25, 25, 24),
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}