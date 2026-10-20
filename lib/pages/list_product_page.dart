import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/controller/list_product_controller.dart';
import 'package:project_flutter_pertama/routes.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});

  final controller = Get.put(ListProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F6FA),

      appBar: AppBar(
        title: const Text("List Products"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 192, 25),
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),

      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => RefreshIndicator(
            onRefresh: () async {
              await controller.refreshData();
            },
            child: ListView.builder(
              itemCount: controller.listProduk.length,
              itemBuilder: (context, index) {
                final produk = controller.listProduk[index];

                return Dismissible(
                  key: ValueKey(produk.namaProduk),
                  direction: DismissDirection.startToEnd,
                  background: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),

                  
                  //ngilang
                  onDismissed: (direction) {
                    controller.listProduk.removeAt(index);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${produk.namaProduk} berhasil dihapus'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },

                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.only(bottom: 12),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),

                      leading: Image.network(
                        produk.imageUrl,
                        width: 60,
                        height: 60,
                        fit: BoxFit.contain,
                      ),

                      title: Text(
                        produk.namaProduk,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Text(
                            produk.harga,
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber, size: 17),
                              const SizedBox(width: 4),
                              Text(produk.rating),
                            ],
                          ),
                        ],
                      ),

                      trailing: const Icon(Icons.chevron_right, color: Colors.blue),

                      // ngarah detail
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

                      onLongPress: () async {
                        final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

                        final selectedValue = await showMenu<String>(
                          context: context,
                          position: RelativeRect.fromRect(
                            Rect.fromLTWH(100, 200, 100, 100), 
                            Offset.zero & overlay.size,
                          ),
                          items: [
                            const PopupMenuItem<String>(
                              value: 'detail',
                              child: Row(
                                children: [
                                  Icon(Icons.info_outline, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text('Lihat Detail'),
                                ],
                              ),
                            ),
                            const PopupMenuItem<String>(
                              value: 'delete',
                              child: Row(
                                children: [
                                  Icon(Icons.delete_outline, color: Colors.red),
                                  SizedBox(width: 8),
                                  Text('Hapus'),
                                ],
                              ),
                            ),
                          ],
                        );

                        // Eksekusi aksi berdasarkan pilihan menu
                        if (selectedValue == 'detail') {
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
                        } else if (selectedValue == 'delete') {
                          controller.listProduk.removeAt(index);
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('${produk.namaProduk} dihapus via menu'),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}