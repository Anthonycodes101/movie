import 'package:movie_ui/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NowShowing extends StatelessWidget {
  const NowShowing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

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

    List<String> textt = [
      'Action',
      'Crime',
      'Comedy',
      'Adventure',
      'Horror',
      'Drama',
    ];


    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: GridView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15,
              childAspectRatio: 0.55,
              mainAxisSpacing: 0,
            ),
            itemCount: 6,
            itemBuilder: (context,index){
              SizedBox(
                height: 500,
              );
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      showBottomSheet(
                          context: context,
                          backgroundColor: Colors.black12,
                          builder: (context){
                            return Card(
                              color: Colors.black,
                              child: Container(
                                height: 200,
                                width: 500,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 200,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(image[index]),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 50,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10, top: 60),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            text[index],
                                            style: TextStyle(
                                              color: isDarkMode ? jSecondaryColor : jSecondaryColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text('Action, Crime, Drama',style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),),

                                          Text('Rating: ',style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 12,),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(image[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 12,),
                  Text(
                    text[index],
                    style: TextStyle(
                      color: isDarkMode ? jWhiteColor : jSecondaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    textt[index],
                    style: TextStyle(
                      color: isDarkMode ? jWhiteColor : jSecondaryColor,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 5,),

                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
