import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:test_di_solid/models/poke_model.dart';
import 'package:test_di_solid/repositories/poke_repository_interface.dart';

class MockPockRepository extends Mock implements IPokeRepository {}

void main() {
  late MockPockRepository mockPockRepository;

  setUp(() {
    mockPockRepository = MockPockRepository();
  });

  test(
    'when call the function getAllPokemons should be return the list of pokemons',
    () async {
      when(mockPockRepository.getAllPokemons()).thenAnswer((_) => Future.value([
            PokeModel(name: 'Pikachu'),
            PokeModel(name: 'Charmander'),
            PokeModel(name: 'Ditto'),
          ]));
      var pokemons = await mockPockRepository.getAllPokemons();
      expect(pokemons.length, 3);
    },
  );
}
