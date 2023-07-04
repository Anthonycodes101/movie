import 'package:movie_ui/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchLocation extends StatelessWidget {
  const SearchLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Column(
      children: [
        Container(
          height: 60,
          width: 380,
          decoration: BoxDecoration(
            border: Border.all(
                color: isDarkMode ? jWhiteColor : jSecondaryColor,
                width: 1.4),
            color: isDarkMode ? jSecondaryColor : jWhiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.calendar_month_outlined,
                color: isDarkMode ? jWhiteColor : jSecondaryColor,
              size: 15,),


              Text(
                'Thurs, Aug 25',
                style: GoogleFonts.raleway(
                  color: isDarkMode ? jWhiteColor : jSecondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              size: 15,),

              VerticalDivider(
                color: Colors.white,
                thickness: 1,
                width: 20,
              ),
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
          ),
        ),
      ],
    );
  }
}
