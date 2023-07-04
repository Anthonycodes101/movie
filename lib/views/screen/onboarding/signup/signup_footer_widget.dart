import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    List<String> image = [
      'assets/images/alien.jpg',
    ];

    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: Image(
              image: AssetImage(image[0]),
              width: 20.0,
            ),
            label: Text(jSignInWithGoogle.toString(), style: Theme.of(context).textTheme.subtitle1),
          ),
        ),
        TextButton(
          onPressed: () {
            Get.to(SignInScreen(),
                duration: Duration(milliseconds: 500),
            transition: Transition.rightToLeftWithFade);
          },
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: jAlreadyHaveAnAccount,
              style: GoogleFonts.raleway(
                color: isDarkMode ? jWhiteColor : jSecondaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            TextSpan(text: jLogin.toString(),
            style: GoogleFonts.raleway(
              color: isDarkMode ? jWhiteColor : jSecondaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),)
          ])),
        )
      ],
    );
  }
}