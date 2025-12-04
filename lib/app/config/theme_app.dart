import 'package:flutter/material.dart';

class AppTheme {
  // Tema Terang (Light Theme)
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.white,
    hintColor: Colors.cyan,
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  );

  // Tema Gelap (Dark Theme)
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.indigo,

    hintColor: Colors.tealAccent,
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey[850],
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white70)),
  );
}
