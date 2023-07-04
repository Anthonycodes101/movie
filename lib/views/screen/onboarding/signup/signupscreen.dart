import 'package:movie_ui/constants/sizes.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:movie_ui/views/screen/onboarding/signup/form_header_widget.dart';
import 'package:movie_ui/views/screen/onboarding/signup/signup_footer_widget.dart';
import 'package:movie_ui/views/screen/onboarding/signup/signup_form_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> image = [
      'assets/images/exls.png',
    ];
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.all(jDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  [
                FormHeaderWidget(
                  image: image[0],
                  title: jSignUpTitle,
                  style: Theme.of(context).textTheme.headline1,
                  subTitle: jSignUpSubTitle,
                  imageHeight: 0.15,
                ),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}