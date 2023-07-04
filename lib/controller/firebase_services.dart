import 'dart:ui';

import 'package:movie_ui/views/screen/homepage.dart';
import 'package:movie_ui/views/screen/onboarding/signin/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class AuthController extends GetxController {
 static AuthController instance = Get.find();
 //email,password, name and phone number
 late Rx<User?> _user;
 RxBool isLoggedIn = false.obs;
 TextEditingController name = TextEditingController();
 TextEditingController email = TextEditingController();
 TextEditingController password = TextEditingController();
 String usersCollection = "users";
 FirebaseAuth auth = FirebaseAuth.instance;

 @override
 void onReady() {
   super.onReady();
   _user = Rx<User?>(auth.currentUser);
   //our user would be notified
   _user.bindStream(auth.userChanges());
   ever(_user, initialScreen);
 }
 void initialScreen(User? user) {
   if (user == null) {
     print('Login page');
     Get.offAll(() => SignInScreen());
   } else {
     Get.offAll(() => HomePage(email:user.email!));
   }
 }
 void register(String email, String password, String string ) async {
   try {
     await auth.createUserWithEmailAndPassword(
         email: email, password: password);
   } on FirebaseAuthException catch (e) {
     Get.snackbar("About User", e.message.toString(),
         backgroundColor: Colors.redAccent,
         snackPosition: SnackPosition.BOTTOM,
         titleText: const Text("Account Creation Failed",
          style: TextStyle(
              color: Colors.white),),);
   }
 }
 void login(String email, String password) async {
   try {
     await auth.signInWithEmailAndPassword(
         email: email, password: password);
   } on FirebaseAuthException catch (e) {
     Get.snackbar("About Login", e.message.toString(),
       backgroundColor: Colors.redAccent,
       snackPosition: SnackPosition.BOTTOM,
       titleText: const Text("Login Failed",
         style: TextStyle(
             color: Colors.white),),);
   }
 }


 void logout() async {
   await auth.signOut()
       .then((value) => Get.snackbar("About Logout", "Logout Successful",
     backgroundColor: Colors.greenAccent,
     snackPosition: SnackPosition.BOTTOM,
     titleText: const Text("Logout Successful",
       style: TextStyle(
           color: Colors.white),),));
 }

}