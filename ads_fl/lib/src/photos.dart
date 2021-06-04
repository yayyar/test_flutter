import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart' as http;

part 'photos.g.dart';

@JsonSerializable()
class Photos {
  Photos(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
  Map<String, dynamic> toJson() => _$PhotosToJson(this);

  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
}

Future<Photos> getPhotos() async {
  const photosURL = 'https://jsonplaceholder.typicode.com/photos';
  final response = await http.get(Uri.parse(photosURL));
  if (response.statusCode == 200) {
    print('Response => ${json.decode(response.body)}');
    return Photos.fromJson(json.decode(response.body));
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(photosURL));
  }
}
