import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/components/custom_textfield.dart';
import 'package:project_flutter_pertama/controller/kalkulator_controller.dart';

class KalkulatorstlePage extends StatelessWidget {
  KalkulatorstlePage({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtangka1 = TextEditingController();
    TextEditingController txtangka2 = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[50], // Warna background agak soft
      appBar: AppBar(
        title: const Text("Kalkulator"),
        centerTitle: true,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0), // Biar gak nempel ke pinggir layar
        child: Column(
          children: [
            MYTextfield(
              myHint: "input angka 1",
              txtController: txtangka1,
              cornerRadius: 10,
              isNumberOnly: true,
            ),
            const SizedBox(height: 12), // Jarak antar input
            MYTextfield(
              myHint: "input angka 2",
              txtController: txtangka2,
              cornerRadius: 10,
              isNumberOnly: true,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Tombol sejajar rapi
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (txtangka1.text.toString().isEmpty || txtangka2.text.toString().isEmpty) {
                      Get.snackbar("Eror", "Angka gak boleh kosong ");
                      return;
                    }
                    controller.tambah(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: const Text("+", style: TextStyle(fontSize: 40)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (txtangka1.text.toString().isEmpty || txtangka2.text.toString().isEmpty) {
                      Get.snackbar("Eror", "Angka gak boleh kosong ", snackPosition: SnackPosition.BOTTOM);
                      return;
                    }
                    controller.kurang(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: const Text("-", style: TextStyle(fontSize: 40)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (txtangka1.text.toString().isEmpty || txtangka2.text.toString().isEmpty) {
                      Get.snackbar("Eror", "Angka gak boleh kosong ");
                      return;
                    }
                    controller.kali(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: const Text("×", style: TextStyle(fontSize: 40)),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (txtangka1.text.toString().isEmpty || txtangka2.text.toString().isEmpty) {
                      Get.snackbar("Eror", "Angka gak boleh kosong ");
                      return;
                    }
                    controller.bagi(
                      double.parse(txtangka1.text.toString()),
                      double.parse(txtangka2.text.toString()),
                    );
                  },
                  child: const Text("÷", style: TextStyle(fontSize: 40)),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Obx(
              () => Text(
                controller.hasilHitung.toString(),
                style: const TextStyle(
                  fontSize: 28, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.blue
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}