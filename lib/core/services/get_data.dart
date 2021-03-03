import 'dart:convert';
import 'dart:io';

import 'package:demogetxapp/core/models/post_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' show get;


class GetData extends GetxController {
  var jsonPlaceHolderUrl = "https://jsonplaceholder.typicode.com/posts";
  List<PostModel> postModels = [];
  @override
  void onInit() {
    print("onInit");
    super.onInit();
  }

  Future<void> getPosts() async {
    final response = await get("$jsonPlaceHolderUrl");
    print("HttpStatus: waiting");

    switch (response.statusCode) {


    case HttpStatus.ok:
        print("HttpStatus: OK");
        final jsonBody = jsonDecode(response.body);
        if (jsonBody is List) {
          postModels = jsonBody
              .map((e) => PostModel.fromJson(e))
              .toList()
              .cast<PostModel>();
        }
        break;
      default:
    }

    update(['textId']); //GetX için
  }

  @override
  void onClose() {
    print("onClose");
    super.onClose();
  }
}