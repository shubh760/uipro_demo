import 'package:flutter/foundation.dart';

class AlbumModel {
  final String image, status;

  AlbumModel({required this.image,required this.status});

  factory AlbumModel.fromJson(Map<String, dynamic> json) {
    return AlbumModel(image: json['message'], status: json['status']);
  }
}
