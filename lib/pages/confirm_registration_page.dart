import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/controller/confrim_registration_controller.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfrimRegistrationController());

    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              "Confirm Registration",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // KOTAK NAMA
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Nama : " + controller.nama.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // KOTAK ALAMAT
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Alamat : " + controller.alamat.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // KOTAK NO TELP
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "No Telp : ${controller.phone}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // KOTAK EMAIL
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Email : ${controller.email}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // KOTAK JENIS KELAMIN
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Jenis Kelamin : ${controller.jenisKelamin}",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // TOMBOL OKE
            SizedBox(
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Get.back();
                },
                child: const Text(
                  "oke",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}