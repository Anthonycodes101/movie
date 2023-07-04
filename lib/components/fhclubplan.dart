import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_screen.dart';
import 'package:movie_ui/views/screen/onboarding/signup/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FhClubPlan extends StatelessWidget {
  const FhClubPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text('FH+ Club',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 280,
                width: 380,
                decoration: BoxDecoration(
                  color: jSecondaryColor,
                  border: Border.all(color: jWhiteColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('Our Silver Plans',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                          'nmvkhgfdtyctdrjsfsjfdkghdljgdlugflytfgcghfkghhdgdjfcxxmgfjgsgfxmbvxmmgfxmfgxmfh',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.white)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                Get.to(SignInScreen());
                              },
                              child: Text(jLogin.toUpperCase(),
                                  style: Theme.of(context).textTheme.button),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.to(() => SignUpScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                primary: jPrimaryColor,
                                onPrimary: Colors.black,
                              ),
                              child: Text(jSignup.toUpperCase(),
                                  style: Theme.of(context).textTheme.button),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                height: 280,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
