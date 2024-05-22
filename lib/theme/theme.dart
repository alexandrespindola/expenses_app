import 'package:flutter/material.dart';

  Color primary = Colors.green;
  Color secondary = Colors.amber;

ThemeData lightTheme() {
  
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: primary,
      secondary: secondary,
    ),
    textTheme: base.textTheme.copyWith(
      titleLarge: base.textTheme.titleLarge!.copyWith(
        fontFamily: 'Arial',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: secondary,
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

ThemeData darkTheme() {
  
  // Compute "opposite" colors for dark theme
  Color darkPrimary = HSLColor.fromColor(primary).withLightness(1 - primary.computeLuminance()).toColor();
  Color darkSecondary = HSLColor.fromColor(secondary).withLightness(1 - secondary.computeLuminance()).toColor();
  
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: darkPrimary,
      secondary: darkSecondary,
    ),
    textTheme: base.textTheme.copyWith(
      titleLarge: base.textTheme.titleLarge!.copyWith(
        fontFamily: 'Ubuntu',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: darkSecondary,
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'Ubuntu',
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}