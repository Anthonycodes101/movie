import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/sizes.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:movie_ui/constants/text_styles.dart';
import 'package:movie_ui/constants/text_styles.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_screen.dart';
import 'package:movie_ui/views/screen/onboarding/signup/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;


    return Scaffold(
     // backgroundColor: isDarkMode ? jSecondaryColor : jPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.all(jDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image:  AssetImage('assets/images/ex L.png'),
                  height: height * 0.6),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(jWelcomeTitle,
                        style: GoogleFonts.raleway(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: isDarkMode ? jWhiteColor : jSecondaryColor)),

                    Text(jWelcomeSubTitle,
                        style: GoogleFonts.raleway(
                            color: isDarkMode ? jWhiteColor : jSecondaryColor,
                            fontStyle: GoogleFonts.raleway().fontStyle,
                            fontSize: 20, fontWeight: FontWeight.w300)),
                  ],
                ),
              ),
              SizedBox(height: jDefaultSize),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Get.to(SignInScreen());
                      },
                      style: OutlinedButton.styleFrom(
                          primary: isDarkMode ? jPrimaryColor : jSecondaryColor,
                        side: BorderSide(
                          color: isDarkMode ? jPrimaryColor : jSecondaryColor,
                        ),
                      ),
                      child: Text(jLogin.toUpperCase(),
                        style: TextStyle(color: isDarkMode ? jPrimaryColor : jSecondaryColor),),
                    ),
                  ),
                  SizedBox(width: jDefaultSize),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => SignUpScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        primary: isDarkMode ? jPrimaryColor : jSecondaryColor,
                      ),
                      child: Text(jSignup.toUpperCase(),
                            style: TextStyle(color: isDarkMode ? jWhiteColor : jWhiteColor)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}