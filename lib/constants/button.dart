import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBotton extends StatelessWidget {
  String text;
   CustomBotton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 48,
          decoration: BoxDecoration(
            color: isDarkMode ? jPrimaryColor : jSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(jSignup.toUpperCase(),
                style: GoogleFonts.raleway(
                  color: isDarkMode ? jWhiteColor : jSecondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ),
      ),
    );
  }
}
