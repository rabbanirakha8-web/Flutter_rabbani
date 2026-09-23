import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MYTextfield extends StatelessWidget {
  // list variable paramater yg digunakan
  final String myHint;// untuk diidsikan ketika dipanggil
  final TextEditingController txtController;
  final double cornerRadius;
  final bool isNumberOnly;
  
  

  const MYTextfield({
  super.key, 
  required this.myHint, 
  required this.txtController,
  required this.cornerRadius,
  this.isNumberOnly = false, 

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(hint: Text(myHint),
     fillColor: const Color.fromARGB(255, 207, 100, 100), 
      filled: true,
      
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(cornerRadius))),
      inputFormatters: isNumberOnly ? [FilteringTextInputFormatter.digitsOnly] : null,
           

    );
  }
}