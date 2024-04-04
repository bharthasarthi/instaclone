/*
This is login page instagramclone that is first page in the instagramclone.
It is used in the logo, email,password, login button, and sign-up page link.
----------
Login in button linked in Navigationbottom bar

**/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/pages/buttomnavigation/navigationbar.dart';
import 'package:instagramclone/pages/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//LOGO instgram
      body: Container(
        height: 900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.network(
                "https://logos-world.net/wp-content/uploads/2020/04/Instagram-Logo-2010-2013.png",
                height: 150,
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            /////////Textfield "Enter your email"
            Container(
              height: 250,
              width: 380,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Enter your email",
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    /////////Textfield "Enter your password"
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter your password",
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    ///////// "LOGIN button"
                    GestureDetector(
                      onTap: () {
                        Get.to(BottomBar());
                      },
                      child: Container(
                        height: 65,
                        width: 370,
                        color: Colors.blue,
                        child: const Center(
                            child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),

            /////line==="Don't have an account?Sign up"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                ),
                const SizedBox(
                  width: 9,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(SignupPage());
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
