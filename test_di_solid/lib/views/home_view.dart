import 'package:flutter/material.dart';
import 'package:test_di_solid/controllers/home_controller.dart';
import 'package:test_di_solid/models/poke_model.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  final HomeController _homeController = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: FutureBuilder<List<PokeModel>>(
        future: _homeController.fetchPokemons(),
        builder: (context, snapshot) {
          var pokemons = snapshot.data;
          if (pokemons == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: pokemons.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(pokemons[index].name),
                );
              });
        },
      ),
    );
  }
}
