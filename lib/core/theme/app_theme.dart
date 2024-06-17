import 'package:flutter/material.dart';

class AppTheme{
  static final darkThemeMode = ThemeData.dark();
  static final lightThemeMode = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
    )
  );
}