import 'package:flutter/material.dart';
import 'package:flutter_kitap_bar/Config/Colors.dart';

var lightTheme = ThemeData(
  useMaterial3: true,

// ♥ Color Style Define
colorScheme: ColorScheme(
      brightness: Brightness.light, 
      primary: primaryColor, 
      onPrimary: backgroundColor, 
      secondary: primaryColor, 
      onSecondary: backgroundColor,
      error: Colors.red, 
      onError: fontColor, 
      background: backgroundColor, 
      onBackground: fontColor, 
      surface: backgroundColor, 
      onSurface: fontColor),


  //TextStyle Define
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: "Play",
      fontSize: 30,
      fontWeight: FontWeight.w800,
    ),
    headlineMedium: TextStyle(
      fontFamily: "Play",
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      fontFamily: "Play",
      fontSize: 18,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontFamily: "Play",
      fontSize: 15,
      fontWeight: FontWeight.w500,
    ),
    bodySmall: TextStyle(
      fontFamily: "Play",
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    labelLarge: TextStyle(
      fontFamily: "Play",
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: lebelColor,
    ),
    labelMedium: TextStyle(
      fontFamily: "Play",
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: lebelColor,
    ),
    labelSmall: TextStyle(
      fontFamily: "Play",
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: lebelColor,
    ),
  ),
);