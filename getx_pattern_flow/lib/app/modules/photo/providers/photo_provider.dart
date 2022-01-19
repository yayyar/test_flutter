import 'package:get/get.dart';

import '../photo_model.dart';

class PhotoProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Photo.fromJson(map);
      if (map is List) return map.map((item) => Photo.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'https://jsonplaceholder.typicode.com';
  }

  Future<List<Photo>> getAllPhoto() async {
    final response = await get('/photos');
    return response.body;
  }

  // Future<Photo?> getPhoto(int id) async {
  //   final response = await get('photo/$id');
  //   return response.body;
  // }

  // Future<Response<Photo>> postPhoto(Photo photo) async =>
  //     await post('photo', photo);
  // Future<Response> deletePhoto(int id) async => await delete('photo/$id');
}
