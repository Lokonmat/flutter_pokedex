import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String title = "Pokedex";

  static TextStyle titleStyle() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48);
  }

  static TextStyle pokemonNameStyle() {
    return TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30);
  }

  static TextStyle typeStyle() {
    return TextStyle(color: Colors.white, fontSize: 20);
  }
}
