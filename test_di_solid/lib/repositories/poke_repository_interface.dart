import 'package:test_di_solid/models/poke_model.dart';

abstract class IPokeRepository {
  Future<List<PokeModel>> getAllPokemons();
}
