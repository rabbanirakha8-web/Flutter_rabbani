import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),),
      body : Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: MYTextfield(myHint: "input Username", txtController: txtUsername, cornerRadius: 10),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MYTextfield(
              myHint: "input Password",
              txtController: txtPassword,
              cornerRadius: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                setState(() {
                    String username = txtUsername.text.toString();
                    String password = txtPassword.text.toString();
                    if (username == "admin" && password == "admin") {
                      print("sukses login");
                      statusLogin = "sukses login admin";
                    } else {
                      print("gagal login");
                      statusLogin = "gagal login admin";
                    }
                  });
              }, 
              child: Text("Login", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 14, 193, 53),fontWeight: FontWeight.bold),)),
              ElevatedButton(onPressed: () {}, child: Text("Register", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 1, 32, 211),fontWeight: FontWeight.bold),)),
            ],
          ),   
          Text("status login : " + statusLogin, style: TextStyle(fontSize: 30)),       
        ],
      ),      
    );
  }
}