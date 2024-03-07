import 'package:flutter/material.dart';
import 'package:flutter_pokedex/screen/home_page.dart';
import 'package:flutter_pokedex/services/pokedex_api.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(421, 915),
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Pokedex",
            theme: ThemeData.dark(),
            home: HomePage(),
          );
        });
  }
}
