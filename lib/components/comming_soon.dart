import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommingSoon extends StatelessWidget {

   CommingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<String> image = [
      'assets/images/alien.jpg',
      'assets/images/Grayman.jpg',
      'assets/images/furj.jpg',
      'assets/images/rookie.jpg',
      'assets/images/why.jpg',
      'assets/images/san.jpg',
    ];

    List<String> text = [
      'Alien',
      'The Grayman',
      'Fury',
      'Sunshine',
      'Moonlight',
      'Red Notice',
    ];

    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(image[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 12,),
             Text(
              text[index],
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
                Text(
                  text[index],
                  style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
                Divider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ],
            ),

          );
        });
  }
}
