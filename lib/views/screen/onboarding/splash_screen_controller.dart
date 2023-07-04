import 'package:movie_ui/views/screen/homepage.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_screen.dart';
import 'package:movie_ui/views/screen/onboarding/signup/signupscreen.dart';
import 'package:movie_ui/views/screen/onboarding/welcome.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();


  RxBool animate = false.obs;


  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 4000));
    Get.to(() => WelcomeScreen());
  }
}