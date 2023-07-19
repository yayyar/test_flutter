import 'package:dio/dio.dart';
import 'package:test_di_solid/models/poke_model.dart';
import 'package:test_di_solid/repositories/poke_repository_interface.dart';

class PokeRepository implements IPokeRepository {
  late final Dio _dio;
  PokeRepository(this._dio);
  @override
  Future<List<PokeModel>> getAllPokemons() async {
    List<PokeModel> pokemons = [];
    var response = await _dio.get('https://pokeapi.co/api/v2/pokemon');
    var result = response.data['results'];
    result.map((pokemon) {
      pokemons.add(PokeModel.fromJson(pokemon));
    }).toList();
    return pokemons;
  }
}
