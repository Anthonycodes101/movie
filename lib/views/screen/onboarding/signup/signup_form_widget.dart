import 'package:movie_ui/constants/color.dart';
import 'package:movie_ui/constants/sizes.dart';
import 'package:movie_ui/constants/text.dart';
import 'package:movie_ui/controller/firebase_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();

    return Container(
      padding:  EdgeInsets.symmetric(vertical: jFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  label: Text(jFullName),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: jFormHeight - 20),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  label: Text(jEmail),
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: jFormHeight - 20),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  label: Text(jPhoneNo),
                  prefixIcon: Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: jFormHeight - 20),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text(jPassword),
                  prefixIcon: Icon(Icons.fingerprint_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: jFormHeight - 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  AuthController.instance.register(
                      emailController.text.trim(),
                      passwordController.text.trim(),
                      nameController.text.trim(),);
                },
                style: ElevatedButton.styleFrom(
                  primary: jPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(jSignup.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}