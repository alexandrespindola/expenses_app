import 'package:flutter/material.dart';

Color primary = Colors.green;
Color secondary = Colors.amber;

ThemeData buildTheme(
    ThemeData base, Color primary, Color secondary, Color textColor) {
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: primary,
      secondary: secondary,
    ),
    textTheme: base.textTheme
        .apply(
          fontFamily: 'Nunito',
        )
        .copyWith(
          titleLarge: base.textTheme.titleLarge!.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
          titleMedium: base.textTheme.titleMedium!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      backgroundColor: secondary,
    ),
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: 'Nunito',
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return buildTheme(base, primary, secondary, Colors.black);
}

ThemeData darkTheme() {
  // Compute "opposite" colors for dark theme
  Color darkPrimary = HSLColor.fromColor(primary)
      .withLightness(1 - primary.computeLuminance())
      .toColor();
  Color darkSecondary = HSLColor.fromColor(secondary)
      .withLightness(1 - secondary.computeLuminance())
      .toColor();

  final ThemeData base = ThemeData.dark();
  return buildTheme(base, darkPrimary, darkSecondary, Colors.white);
}
