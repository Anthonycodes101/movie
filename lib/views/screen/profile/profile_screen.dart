import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/controller/firebase_services.dart';
import 'package:movie_ui/views/screen/profile/profile_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  String email;
   ProfileScreen({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(LineAwesomeIcons.angle_left),
          onPressed: () {
            Get.back();
          },
        ),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Text('Profile',
              style: GoogleFonts.raleway(
                fontSize: 20,
                  color: isDarkMode ? Colors.white : Colors.black,)),
        ),
        actions: [
          IconButton(
            icon: Icon(isDarkMode? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      'assets/images/prop.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'John Doe',
                    style: GoogleFonts.raleway(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isDarkMode ? jWhiteColor : jSecondaryColor)
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  email,
                    style: GoogleFonts.raleway(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 45,
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: jPrimaryColor,
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                      child: Text('Edit Profile',
                         style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? jWhiteColor : jWhiteColor)
                      ),
                ),
                ),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),


                SizedBox(
                  height: 500,
                    child: const ProfileTabBar()),

                SizedBox(
                  height: 20,
                ),
                Divider(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        AuthController.instance.logout();
                        Get.offAllNamed('login');
                      },
                    style: ElevatedButton.styleFrom(
                      primary: jPrimaryColor,
                      side: BorderSide.none,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                      child: Text('Logout',
                         style: GoogleFonts.raleway(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode ? jWhiteColor : jWhiteColor)
                      ),
                ),
                ),

              ]
            ),
          ),
        ),
      ),
    );
  }
}
