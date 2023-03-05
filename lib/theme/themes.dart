import 'package:flutter/material.dart';

enum AppTheme { ligth, dark }

final apptheme = {
  AppTheme.ligth: ThemeData(
    splashFactory: NoSplash.splashFactory,
      appBarTheme: AppBarTheme(
        titleTextStyle: const TextStyle(
            fontFamily: 'Aeroport',
            fontSize: 21.0,
            color: Colors.black
          ),
        iconTheme: IconThemeData(
          color: Colors.grey[900]
        )
      ),
      cardColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: const Color.fromARGB(255, 216, 216, 216),
      fontFamily: 'Aeroport',
      hintColor: Colors.grey, 
      colorScheme: ColorScheme.fromSwatch().copyWith(
        background: Colors.blueGrey[200],
        primary: Colors.black,
        brightness: Brightness.light,
        primaryContainer: Colors.white,
        secondary: Colors.black)),
  AppTheme.dark: ThemeData(
    splashFactory: NoSplash.splashFactory,
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
          fontFamily: 'Aeroport',
            fontSize: 21.0,
            color: Colors.white
          ),
        iconTheme: IconThemeData(
          color: Colors.white70
        )
      ),
      cardColor: const Color.fromARGB(255, 31, 38, 48),
      scaffoldBackgroundColor: const Color.fromARGB(255, 19, 24, 31),
      primaryColor: const Color.fromARGB(255, 29, 36, 44),
      fontFamily: 'Aeroport',
      hintColor: Colors.grey, 
      colorScheme: ColorScheme.fromSwatch().copyWith(
        background: const Color.fromARGB(255, 30, 87, 79),
        primary: Colors.white,
        brightness: Brightness.dark,
        primaryContainer: Colors.black,
        secondary: Colors.white)),
};