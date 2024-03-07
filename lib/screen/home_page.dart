import 'package:flutter/material.dart';
import 'package:flutter_pokedex/widgets/app_title.dart';
import 'package:flutter_pokedex/widgets/pokemon_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        AppTitle(),
        Expanded(child: PokemonList()),
      ],
    ));
  }
}
