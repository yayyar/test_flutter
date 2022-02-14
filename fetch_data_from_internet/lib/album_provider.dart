import 'package:fetch_data_from_internet/data_modal/Album.dart';
import 'package:fetch_data_from_internet/http_service.dart';

class AlbumProvider {
  final _httpService = HttpService();
  Future<List<Album>> getAlbumList() async {
    var response = await _httpService.get('/albums');
    var data = response as List;
    return data.map((album) => Album.fromMap(album)).toList();
  }
}
