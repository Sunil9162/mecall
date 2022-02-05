import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mecall/constants/colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xffFBF8F1),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    ),
    shadowColor: Colors.blue.withOpacity(0.2),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: blackColors,
      ),
    ),
    canvasColor: Colors.blue,
  );
}
