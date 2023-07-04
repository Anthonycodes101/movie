
import 'package:movie_ui/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.raleway(color: Colors.black87, fontSize: 24, fontWeight: FontWeight.bold,),
    headline2: GoogleFonts.raleway(color: Colors.black87, fontSize: 20, fontWeight: FontWeight.bold),
    headline3: GoogleFonts.raleway(color: Colors.black87, fontSize: 18, fontWeight: FontWeight.bold),
    headline4: GoogleFonts.raleway(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.bold),
    headline5: GoogleFonts.raleway(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.bold),
    headline6: GoogleFonts.raleway(color: Colors.black87, fontSize: 12, fontWeight: FontWeight.bold),
    subtitle1: GoogleFonts.raleway(color: Colors.black87, fontSize: 16, fontWeight: FontWeight.normal),
    subtitle2: GoogleFonts.raleway(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.bold),


  );
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.raleway(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white60,),
    headline2: GoogleFonts.raleway(color: Colors.white60, fontSize: 20, fontWeight: FontWeight.bold),
    headline3: GoogleFonts.raleway(color: Colors.white60, fontSize: 18, fontWeight: FontWeight.bold),
    headline4: GoogleFonts.raleway(color: Colors.white60, fontSize: 16, fontWeight: FontWeight.bold),
    headline5: GoogleFonts.raleway(color: Colors.white60, fontSize: 14, fontWeight: FontWeight.bold),
    headline6: GoogleFonts.raleway(color: Colors.white60, fontSize: 12, fontWeight: FontWeight.bold),
    subtitle1: GoogleFonts.raleway(color: Colors.white60, fontSize: 16, fontWeight: FontWeight.normal),
    subtitle2: GoogleFonts.raleway(color: Colors.white60, fontSize: 14, fontWeight: FontWeight.normal),
  );

  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),  prefixIconColor: jSecondaryColor,
    floatingLabelStyle: TextStyle(color: jSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: jSecondaryColor),
    ), );


  static InputDecorationTheme darkInputDecorationTheme = const InputDecorationTheme(
    border: OutlineInputBorder(),  prefixIconColor: jPrimaryColor,
    floatingLabelStyle: TextStyle(color: jPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: jPrimaryColor),
    ),  ); }

