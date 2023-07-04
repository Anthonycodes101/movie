import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/views/screen/fhclub.dart';
import 'package:movie_ui/views/screen/foodndrinks/foodndrink.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../enums.dart';


class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.black54,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  LineAwesomeIcons.home,
                  color: MenuState.ticket == selectedMenu
                      ? jPrimaryColor
                      : jAccentColor,
                ),
                onPressed: () =>
                    Get.to(FhclubScreen()),
              ),
              IconButton(
                icon: Icon(
                  LineAwesomeIcons.shopping_cart,
                  color: MenuState.cart == selectedMenu
                      ? jPrimaryColor
                      : jWhiteColor,
                ),
                onPressed: () {
                  Get.to(FhclubScreen());
                  //Navigator.pushReplacementNamed(context, CartScreen.routeName);

                },
              ),
              IconButton(
                icon: Image.asset("assets/images/cocktail.png",
                color: MenuState.drinks == selectedMenu
                      ? jPrimaryColor
                      : jAccentColor,
                ),
                onPressed: () =>
                    Get.to(FoodScreen()),
              ),
              IconButton(
                icon: Icon(
                  LineAwesomeIcons.star,
                  color: MenuState.fhclub == selectedMenu
                      ? jPrimaryColor
                      : jAccentColor,
                ),
                onPressed: () =>
              Get.to(FhclubScreen(),
              duration: Duration(milliseconds: 500),
              transition: Transition.rightToLeft,
              ),
              ),
            ],
          )),
    );
  }
}
