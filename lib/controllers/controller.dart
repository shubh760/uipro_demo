import 'dart:convert';

import 'package:get/get.dart';
import 'package:vayus_assignment/models/album_model.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  var photoModal = <AlbumModel>[].obs;
  var isloading = true.obs;

  Future<void> loadingdata() async {
    final response =
        await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));
    if (response.statusCode == 200) {
      AlbumModel _albumModel = AlbumModel.fromJson(jsonDecode(response.body));
      photoModal.add(
          AlbumModel(image: _albumModel.image, status: _albumModel.status));
    } else {
      Get.snackbar('error loading', 'trouble loading data');
    }
  }
}
