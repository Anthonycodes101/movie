import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/views/screen/profile/profile_tab_bar.dart';
import 'package:movie_ui/views/screen/profile/prolist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          DefaultTabController(length: 2, child:
          Column(
            children: [
              TabBar(
                indicatorColor: jPrimaryColor,
                labelColor: isDarkMode ? Colors.white : Colors.black,
                unselectedLabelColor: isDarkMode ? Colors.white : Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(LineAwesomeIcons.user),
                    text: 'Profile',
                  ),
                  Tab(
                    icon: Icon(LineAwesomeIcons.cog),
                    text: 'Settings',
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 400,
                child: TabBarView(
                  children: [
                    prolist(isDarkMode: isDarkMode),


                    Container(
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
        ],
      ),
    );
  }
}

