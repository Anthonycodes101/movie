import 'package:movie_ui/components/buttomnavbar.dart';
import 'package:movie_ui/components/comming_soon.dart';
import 'package:movie_ui/components/now_showing.dart';
import 'package:movie_ui/components/search_location.dart';
import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/enums.dart';
import 'package:movie_ui/views/screen/profile/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  String email;
   HomePage({Key? key, required this.email}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;



    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        backgroundColor: isDarkMode ? jSecondaryColor : jPrimaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 7,
            ),
            Text(
              'movie_ui',
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ProfileScreen(email: email),
                duration: Duration(milliseconds: 500),
                transition: Transition.rightToLeftWithFade,
                );
              },
              child: Icon(
                Icons.person_outline_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.ticket),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black54,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      

      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          DefaultTabController(length: 2,
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.grey,
                  labelColor: Colors.grey,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Text("NOW SHOWING", style: TextStyle(
                          color: isDarkMode ? jWhiteColor : jSecondaryColor,
                          fontStyle: GoogleFonts.raleway().fontStyle,
                          fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Tab(
                      child: Text("COMING SOON", style: GoogleFonts.poppins(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SearchLocation(),

                Container(
                  height: 700,
                  child: TabBarView(
                    //physics: NeverScrollableScrollPhysics(),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: NowShowing(),
                      ),
                      CommingSoon(),
                    ],
                  ),
                ),

              ],
            ),
          ),
          Spacer(

          ),
        ],
      ),

    );
  }
}

