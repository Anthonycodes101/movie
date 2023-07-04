import 'package:movie_ui/constants/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class JAppTheme {
  JAppTheme._();

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'raleway',
  primarySwatch: Colors.red,
  brightness: Brightness.light,
  textTheme: JTextTheme.lightTextTheme,
  appBarTheme: AppBarTheme(),
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme:
  ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );


  static ThemeData darkTheme = ThemeData(
    fontFamily: 'raleway',
  primarySwatch: Colors.yellow,
  brightness: Brightness.dark,
  textTheme: JTextTheme.darkTextTheme,
  appBarTheme: AppBarTheme(),
  floatingActionButtonTheme: FloatingActionButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
  );
  }