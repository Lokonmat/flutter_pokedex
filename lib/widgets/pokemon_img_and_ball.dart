import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pokedex/constants/ui_helper.dart';
import 'package:flutter_pokedex/model/pokemon_model.dart';

class PokemonImgAndBall extends StatelessWidget {
  final PokemonModel pokemon;

  const PokemonImgAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = "images/pokeball.png";
    return Stack(children: [
      Align(
        alignment: Alignment.bottomRight,
        child: Image.asset(
          pokeballImageUrl,
          width: UIHelper.calculatePokemonImgAndBallSize(),
          height: UIHelper.calculatePokemonImgAndBallSize(),
          fit: BoxFit.fitHeight,
        ),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: CachedNetworkImage(
          imageUrl: pokemon.img ?? "",
          width: UIHelper.calculatePokemonImgAndBallSize(),
          height: UIHelper.calculatePokemonImgAndBallSize(),
          fit: BoxFit.fitHeight,
          placeholder: (context, url) => CircularProgressIndicator(
            color: Colors.red,
          ),
        ),
      )
    ]);
  }
}
