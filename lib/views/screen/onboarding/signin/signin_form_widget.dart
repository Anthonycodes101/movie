import 'package:movie_ui/constants/button.dart';
import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/sizes.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:movie_ui/controller/firebase_services.dart';
import 'package:movie_ui/views/screen/homepage.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_screen.dart';
import 'package:movie_ui/views/screen/onboarding/signup/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  String email;
   LoginForm({
    Key? key, required this.email
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Form(
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: jFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: jEmail,
                  hintText: jEmail,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: jPrimaryColor),

                  )),
            ),
            const SizedBox(height: jFormHeight - 20),
            TextFormField(
              controller: passwordController,
              decoration:  InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: jPassword,
                hintText: jPassword,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: isDarkMode ? jWhiteColor : jSecondaryColor),
                ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(height: jFormHeight - 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child:  Text(jForgetPassword,
                  style: GoogleFonts.raleway(
                    color: isDarkMode ? jWhiteColor : jSecondaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),)),
            ),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
                },
                child: Text(jLogin),
                style: ElevatedButton.styleFrom(
                  primary: jPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}