import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/constant.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';
import 'package:flutter_pokedex/widgets/pokemon_img_and_ball.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PokemonListItem extends StatelessWidget {
  final PokemonModel pokemon;

  PokemonListItem({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            pokemon.name ?? "N/A",
            style: Constants.pokemonNameStyle(),
          ),
          Chip(label: Text(pokemon.type![0])),
          Expanded(child: PokemonImgAndBall(pokemon: pokemon))
        ],
      ),
    );
  }
}
