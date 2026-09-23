import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/components/custom_buttonclone.dart';
import 'package:project_flutter_pertama/components/custom_textfieldclone.dart';
import 'package:project_flutter_pertama/components/custom_txtclone.dart';


class LoginCloneFixs extends StatelessWidget {
   LoginCloneFixs({super.key});

final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
// final MYButton myButton = MYButton(text: "Login", onPressed: () {});
 

  
  @override
  Widget build(BuildContext context) {
    // pindah login clone kesini lalu buat reusable component untuk textfield dan button    
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Mytext(textasli:"Nikmati Musik.\nGratis di Spotify."),
            // const Text(
            //   "Nikmati Musik.\nGratis di Spotify.",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(height: 40),
            
            // Input Email
            MYtfClone(
              hintText: "Masukkan username / email",
              controller: txtEmail,
              cornerRadius: 8.0,
            ),
            const SizedBox(height: 16),

            MYtfClone(
              hintText: "Password",
              controller: txtPassword,
              cornerRadius: 8.0,
              isObscure: true
            
            ),
            const SizedBox(height: 16,),

             MYButton(text: "LOGIN")

      // Container(
      //   margin: const EdgeInsets.all(10),
      //        child: MYtfClone(
      //            hintText: "input Password",
      //               controller: txtPassword,
      //                     cornerRadius: 10,
      //                   isObscure: true
                          
      //              ),  
                                    
      //                 ),


           
          
            // // Input Password
           
            // const SizedBox(height: 24),

            // Tombol Log In
 
          ],
        ),
      ),
    );
  }
  //   return const Placeholder();
  // }
}