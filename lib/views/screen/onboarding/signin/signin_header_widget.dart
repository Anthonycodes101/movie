import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              image:  AssetImage('assets/images/exls.png'),
              height: size.height * 0.3),
          SizedBox(
            height: 10,
          ),
          Text(jLoginTitle, style: GoogleFonts.raleway(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: isDarkMode ? jWhiteColor : jSecondaryColor)),
          SizedBox(
            height: 10,
          ),
          Text(jLoginSubTitle, style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color:isDarkMode ? jWhiteColor : jSecondaryColor)),
        ],
      ),
    );
  }
}