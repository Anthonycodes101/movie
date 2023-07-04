import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/views/screen/foodndrinks/foodwidgets/products.dart';
import 'package:movie_ui/views/screen/foodndrinks/foodwidgets/shopping_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => CartScreen());
            },
            icon: Icon(
              LineAwesomeIcons.shopping_cart,
              color: Colors.white,
            ),
          ),
        ],
        toolbarHeight: 65,
        leading: IconButton(onPressed: (){},
            icon: IconButton(
              icon: Icon(LineAwesomeIcons.angle_left),
              onPressed: () {
                Get.back();
              },),),

        title: Text('Food & Drinks',
          style: GoogleFonts.raleway(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),),

      ),

      body: SingleChildScrollView(

        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.all(15),
              child: SizedBox(
                width: 200,
                height: 55,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.location_on, color: Colors.white,),
                        Text(
                          'Location',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,),
                      ],
                    )),
              ),
            ),
            SizedBox(
              height: 700,
              child: Expanded(
                child: DefaultTabController(length: 2, child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Colors.grey,
                      labelColor: Colors.grey,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(
                          child: Text("Food", style: TextStyle(
                              color: isDarkMode ? jWhiteColor : jSecondaryColor,
                              fontStyle: GoogleFonts.raleway().fontStyle,
                              fontSize: 20, fontWeight: FontWeight.bold)),),
                        Tab(
                          child: Text("Drinks", style: TextStyle(
                              color: isDarkMode ? jWhiteColor : jSecondaryColor,
                              fontStyle: GoogleFonts.raleway().fontStyle,
                              fontSize: 20, fontWeight: FontWeight.bold)),),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          DrinkProducts(),
                          Container(
                            color: Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
