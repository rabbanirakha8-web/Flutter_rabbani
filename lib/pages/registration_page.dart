import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_pertama/components/custom_textfield.dart';
import 'package:project_flutter_pertama/routes.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController txtNamaku = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtPhone = TextEditingController(); 
    TextEditingController txtEmail = TextEditingController();

    String? selectedGender;
    List<String> listGender = ["Laki-laki", "Perempuan"];

    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Text Judul Register di Atas
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Register" ,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              

            ),
            const SizedBox(height: 16),

            MYTextfield(myHint: "input nama", txtController: txtNamaku, cornerRadius: 10),
            const SizedBox(height: 10),
            MYTextfield(myHint: "input Alamat", txtController: txtAlamat, cornerRadius: 10),
            const SizedBox(height: 10),
            MYTextfield(myHint: "input Nomor Telepon", txtController: txtPhone, cornerRadius: 10,isNumberOnly: true,),
            const SizedBox(height: 10),
            MYTextfield(myHint: "input Email", txtController: txtEmail, cornerRadius: 10),
            const SizedBox(height: 10),

            

        DropdownButtonFormField<String>(
              value: selectedGender,
              hint: const Text(
                "Pilih Jenis Kelamin",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              
              dropdownColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.grey, width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Theme.of(context).primaryColor, width: 1.5),
                ),
              ),          
              items: listGender.map((gender) {
                return DropdownMenuItem(
                  value: gender, 
                  child: Text(gender, style: const TextStyle(fontSize: 14)),
                );
              }).toList(),
              onChanged: (val) {
                if (val != null) selectedGender = val;
              },
            ),
            const SizedBox(height: 20),

            // Tombol Send
            SizedBox(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black, 
      foregroundColor: Colors.white,  
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
               onPressed: () {
  Get.defaultDialog(
    title: "Konfirmasi",
    middleText: "Yakin dengan data yang diisi?",
    textConfirm: "Ya, Kirim",
    textCancel: "Batal",
    confirmTextColor: Colors.white,
    buttonColor: Colors.blueAccent,
    onConfirm: () {
      Get.back(); 

      Get.toNamed(
        Routes.confrimRegistration,
        arguments: {
          'name': txtNamaku.text.toString(),
          'alamat': txtAlamat.text.toString(),
          'phone': txtPhone.text,
          'email': txtEmail.text.toString(),
          'jenis_kelamin': selectedGender,
        },
      );
    },
  );
},
                child: Text("send",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                
              ),
            ),
          ],
        ),
      ),
    );

  }
}