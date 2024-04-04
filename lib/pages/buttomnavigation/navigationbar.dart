/*
This is the navigation bar in Instagram. That is the third page in Instagram Clone.
it is used all pages in navigated in icons.

 **/

import 'package:flutter/material.dart';
import 'package:instagramclone/pages/buttomnavigation/homepage.dart';
import 'package:instagramclone/pages/buttomnavigation/notification.dart';
import 'package:instagramclone/pages/buttomnavigation/post.dart';
import 'package:instagramclone/pages/buttomnavigation/profile.dart';
import 'package:instagramclone/pages/buttomnavigation/search.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  List pages = [
    HomePage(),
    SearchPage(),
    PostPage(),
    NotificationPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: (index) => setState(() {
                selectedIndex = index;
              }),

          ////all navigation bar icons
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.face), label: 'Profile'),
          ]),
    );
  }
}
