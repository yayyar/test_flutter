import 'package:dio/dio.dart';
import 'package:test_di_solid/models/poke_model.dart';
import 'package:test_di_solid/repositories/poke_repository.dart';
import 'package:test_di_solid/repositories/poke_repository_interface.dart';

class HomeController {
  final IPokeRepository _pokeRepository = PokeRepository(Dio());
  Future<List<PokeModel>> fetchPokemons() async {
    return _pokeRepository.getAllPokemons();
  }
}
