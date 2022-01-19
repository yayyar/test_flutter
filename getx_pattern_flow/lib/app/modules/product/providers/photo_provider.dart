import 'package:getx_pattern_flow/app/services/connect_service.dart';

import '../photo_model.dart';

class PhotoProvider extends ConnectService {
  // @override
  // void onInit() {
  //   print('PhotoProvider onInit');
  //   // httpClient.baseUrl = "https://jsonplaceholder.typicode.com";
  //   httpClient.defaultDecoder = (map) {
  //     if (map is Map<String, dynamic>) return Photo.fromJson(map);
  //     if (map is List) return map.map((item) => Photo.fromJson(item)).toList();
  //   };
  // }

  Future<List<Photo>> getAllPhoto() async {
    final response = await get('/photos');
    var data = response.body as List;
    return data.map((item) => Photo.fromJson(item)).toList();
    // return response.body;
  }
}
