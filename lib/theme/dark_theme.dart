import 'package:flutter/material.dart';
import 'package:mecall/constants/colors.dart';

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xFF130707),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: whiteColor,
      ),
    ),
    shadowColor: Colors.white.withOpacity(0.2),
    canvasColor: Colors.white,
  );
}

// lets check