import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/kalkulatorstle_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: KalkulatorstlePage(),
    );
  }
}



