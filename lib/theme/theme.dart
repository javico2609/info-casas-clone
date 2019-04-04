import 'dart:ui';

import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFee704a);
Color textColor = Color(0xFF4cb6ac);
Color fbColor = Color(0xFF3f5da6);

final ThemeData appTheme = ThemeData(
  primarySwatch: Colors.blue,
  brightness: Brightness.light,
  primaryColor: primaryColor,
  accentColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textSelectionHandleColor: Colors.black,
  textSelectionColor: Colors.black12,
  cursorColor: Colors.black,
  toggleableActiveColor: Colors.black,
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
    ),
    labelStyle: const TextStyle(
      color: Colors.black,
    ),
  ),
);
