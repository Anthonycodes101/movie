import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    TextStyle? style,
  }) : super(key: key);

  //Variables -- Declared in Constructor
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Center(
      child: Column(
        children: [
          Image(image: AssetImage(image), color: imageColor, height: size.height * imageHeight),
          SizedBox(height: heightBetween),
          Text(title, textAlign: textAlign, style: GoogleFonts.raleway(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white)),
          Text(subTitle, textAlign: textAlign, style: GoogleFonts.raleway(fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white)),
        ],
      ),
    );
  }
}