// lib/theme.dart

import 'package:flutter/material.dart';

// 👇 Common Text Styles
class AppTextStyles {
  static TextStyle mTextStyle11() {
    return const TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  }

  static TextStyle mTextStyle16() {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    );
  }

  static TextStyle mTextStyle21() {
    return const TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  // Aur bhi add kar sakte ho...
}

// 👇 App Theme
class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.blue,
      elevation: 2,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.deepPurple,
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
    ),
  );
}
