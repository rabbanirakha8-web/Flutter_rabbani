import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration( hint: Text(" input Angka Pertama"))),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration( hint: Text(" input Angka Kedua"))),
          ),
           
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("+", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 14, 193, 53),fontWeight: FontWeight.bold),)),
              ElevatedButton(onPressed: () {}, child: Text("-", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 1, 32, 211),fontWeight: FontWeight.bold),)),
              ElevatedButton(onPressed: () {}, child: Text("×", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 211, 47, 1),fontWeight: FontWeight.bold),)),
              ElevatedButton(onPressed: () {}, child: Text("÷", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 212, 215, 17),fontWeight: FontWeight.bold),)),
            ],
          ),
          Text(
              "Hasil: 100",
                style: TextStyle(
                  fontSize: 24,                  
                    fontWeight: FontWeight.bold,   
                      color: Colors.blue,            
         ),
            ),

            ElevatedButton(onPressed: () {}, child: Text("Reset", style: TextStyle(fontSize: 20,color: const Color.fromARGB(255, 1, 32, 211),fontWeight: FontWeight.bold),)),
        ],
      ),
      
    );
  }
}