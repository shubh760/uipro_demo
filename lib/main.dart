import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vayus_assignment/controllerBinding.dart';
import 'package:vayus_assignment/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialBinding: ControllerBinding(),
      home: const Home(),
    );
  }
}


