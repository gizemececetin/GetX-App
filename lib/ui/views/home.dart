
import 'package:demogetxapp/core/services/get_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GetData controller = Get.put(GetData());
  bool isClick = false;

  //var number = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Getx App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           // Obx(() => Text("Sayı :$number")),
            isClick? Container():
            RaisedButton(
              child: Text("Get Data"),
              onPressed: () {
                controller.getPosts();
                setState(() {
                  isClick = true;
                });
              },
            ),
            isClick ?
            Expanded(
              child: GetBuilder<GetData>(
                builder: (_) {
                  return ListView.builder(
                    itemCount: controller.postModels.length,
                    itemBuilder: (context, index) {
                      return Card(
                          child: Text("Data  ${_.postModels[index].id}"));
                    },);
                },
              ),
            ): Container(),
          ],
        ),),)
    ;}
}

