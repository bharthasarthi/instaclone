/* 
This is a profile video page on Instagram. That is the tenth page in the Instagram clone.
It is used in grid counting. It is aligned in the image grid picture.
-----------------------
it is link in profile
**/

import 'package:flutter/material.dart';

class ProfilevideoPage1 extends StatelessWidget {
  final List<Image> userPosts = [
    Image.asset(
      'lib/assets/nat1.jpeg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'lib/assets/car1.jpeg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'lib/assets/mob.jpeg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'lib/assets/nat2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'lib/assets/car2.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'lib/assets/nat4.jpg',
      fit: BoxFit.fill,
    ),
    Image.asset(
      'lib/assets/nat3.jpg',
      fit: BoxFit.fill,
    ),
  ];
  ProfilevideoPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 8,
      mainAxisSpacing: 15,
      children: [...userPosts],
    );
  }
}
