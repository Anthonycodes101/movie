import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/sizes.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:movie_ui/views/screen/homepage.dart';
import 'package:movie_ui/views/screen/onboarding/signup/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: jFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon:  Image(image: AssetImage(
              'assets/images/fast-food.png',
            ), width: 20.0),
            onPressed: () {},
            label:  Text(jSignInWithGoogle,
                style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? jWhiteColor : jSecondaryColor)),
          ),
        ),
        const SizedBox(height: jFormHeight - 20),
        TextButton(
          onPressed: () {
            Get.to(SignUpScreen());
          },
          child: Text.rich(
            TextSpan(
                text: jDontHaveAnAccount,
                style: GoogleFonts.raleway(
                    color: isDarkMode ? jWhiteColor : jSecondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
                children:  [
                  TextSpan(
                      text: jSignup,
                      style: TextStyle(
                      color: isDarkMode ? jPrimaryColor : jPrimaryColor,
                          fontWeight: FontWeight.bold))
                ]),
          ),
        ),
      ],
    );
  }
}