import 'package:flutter/material.dart';

class DefaultColor {
  static const primary = Color(0xffD70F64);
  static const colorBlack = Color(0xff030002);
  static const backgroundColor = Color(0xffeef1f6);
  static const backgroundWhite = Color(0xffffffff);
  static const MaterialColor primaryswatch =
      MaterialColor(_primaryswatchPrimaryValue, <int, Color>{
    50: Color(0xFFFCE4EE),
    100: Color(0xFFF7BBD4),
    200: Color(0xFFF18DB8),
    300: Color(0xFFEB5F9C),
    400: Color(0xFFE73D86),
    500: Color(_primaryswatchPrimaryValue),
    600: Color(0xFFE01869),
    700: Color(0xFFDC145E),
    800: Color(0xFFD81054),
    900: Color(0xFFD00842),
  });
  static const int _primaryswatchPrimaryValue = 0xFFE31B71;

  static const MaterialColor primaryswatchAccent =
      MaterialColor(_primaryswatchAccentValue, <int, Color>{
    100: Color(0xFFFFFAFB),
    200: Color(_primaryswatchAccentValue),
    400: Color(0xFFFF94AE),
    700: Color(0xFFFF7A9A),
  });
  static const int _primaryswatchAccentValue = 0xFFFFC7D4;
}

class MyColors {
  static const Color primaryColor = const Color(0xffd60265);
  static const Color secondaryTextColor = const Color(0xffd60265);

  static const MaterialColor navy = MaterialColor(
    0xffd60265,
    <int, Color>{
      50: Color(0xffd60265),
      100: Color(0xffd60265),
      200: Color(0xffd60265),
      300: Color(0xffd60265),
      400: Color(0xffd60265),
      500: Color(0xffd60265),
      600: Color(0xffd60265),
      700: Color(0xffd60265),
      800: Color(0xffd60265),
      900: Color(0xffd60265),
    },
  );
}
