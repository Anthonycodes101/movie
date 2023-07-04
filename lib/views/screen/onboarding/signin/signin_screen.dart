import 'package:movie_ui/constants/sizes.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_footer_widget.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_form_widget.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_header_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Get the size in LoginHeaderWidget()
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(jDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                LoginHeaderWidget(),
                LoginForm(email: '',),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}