import 'package:demogetxapp/ui/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main() {
  runApp(DemoGetxApp());
}

class DemoGetxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx App',
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: Home(),
    );
  }
}
