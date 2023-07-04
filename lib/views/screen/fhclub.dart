import 'package:movie_ui/components/fhclubplan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FhclubScreen extends StatelessWidget {
  const FhclubScreen({Key? key}) : super(key: key);

  static String routeName = "/fhclubscreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FhClubPlan(),
          ],
        ),
      ),
    );
  }
  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.black54,
      elevation: 0,
      automaticallyImplyLeading: false,
      //foregroundColor: Colors.transparent,
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
          Icon(
            Icons.person_outline_outlined,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),

    );
}

}

