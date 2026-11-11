import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/controller/list_product_controller.dart';
import 'package:project_flutter_pertama/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Panggil controller yang udah ada data listProduk-nya
  final controller = Get.put(ListProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 240, 
              child: Obx(
                () => ListView.builder(
                  scrollDirection: Axis.horizontal, 
                  itemCount: controller.listProduk.length,
                  itemBuilder: (context, index) {
                    final produk = controller.listProduk[index];

                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          Routes.detailproduk,
                          arguments: {
                            'nama': produk.namaProduk,
                            'gambar': produk.imageUrl,
                            'namaToko': produk.namaToko,
                            'harga': produk.harga,
                            'deskripsi': produk.deskripsi,
                            'rating': produk.rating,
                            'review': produk.review,
                          },
                        );
                      }, 
                      child: Container(
                        width: 140,
                        margin: const EdgeInsets.only(right: 12),
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 53, 110, 255),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 110,
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: Image.network(
                                produk.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 4),
                              child: Text(
                                produk.namaProduk,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Text(
                              produk.harga,
                              style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 4),
                                  child: const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 14,
                                  ),
                                ),
                                Text(
                                  produk.rating,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ); 
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}