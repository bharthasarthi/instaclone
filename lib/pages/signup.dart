/*
 
This is Signup page in instagramclone. That is a second-page Instagram clone.
 It is used in the logo,email or phone number,password, Confrim password, and sign-up button.
 
  * 
 ****/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagramclone/pages/login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        ///LOGO instagram
        child: Container(
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

              ////Textfield "Enter your email/phone number"
              Container(
                height: 350,
                width: 380,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter your email/Phone number",
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      const SizedBox(
                        height: 15,
                      ),

                      ////Textfield "Enter your password"
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

                      ////Textfield "Confrim password"
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Confirm password",
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      ////Sign-up button
                      GestureDetector(
                        onTap: () {
                          Get.to(Login());
                        },
                        child: Container(
                          height: 65,
                          width: 370,
                          color: Colors.blue,
                          child: const Center(
                              child: Text(
                            "Signin",
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

              ///// line==="Do have an account? Login"
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Do have an account?",
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Login());
                    },
                    child: const Text(
                      "Login",
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
      ),
    );
  }
}
