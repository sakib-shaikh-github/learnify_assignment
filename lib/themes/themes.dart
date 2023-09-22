import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData defaultTheme() {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Colors.deepOrange,
        onPrimary: Colors.white,
        secondary: Colors.deepOrange,
        onSecondary: Colors.black,
        error: Colors.red,
        onError: Colors.white,
        background: Colors.white,
        onBackground: Colors.black,
        surface: Colors.deepOrange,
        onSurface: Colors.black,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))))),
      textTheme: appTextTheme(),
    );
  }

  static TextTheme appTextTheme() {
    return GoogleFonts.poppinsTextTheme()
        .copyWith(headlineSmall: const TextStyle(fontWeight: FontWeight.bold));
  }
}
