import 'package:movie_ui/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class prolist extends StatelessWidget {
  const prolist({
    Key? key,
    required this.isDarkMode,
  }) : super(key: key);

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: jPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),),
                child: Icon(
                  LineAwesomeIcons.user,
                  color: jAccentColor,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'User Name',
                style: TextStyle(
                  color: isDarkMode ? Colors.black87 : Colors.white,
                ),
              ),
            ),
          ),
           SizedBox(
            height: 20,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            tileColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: jPrimaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),),
                child: Icon(
                  LineAwesomeIcons.user,
                  color: jAccentColor,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Text(
                'User Name',
                style: TextStyle(
                  color: isDarkMode ? Colors.black87 : Colors.white,
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
