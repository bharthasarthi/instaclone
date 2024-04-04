/* 
This is a profile page in Instagram. That is the eighth page in the Instagram clone.
it is used in profile ipcture,name,caption,profile editor,tabbar,and tabbarview

----------------------
it is linked in profileimage and profilevideo 

**/

import 'package:flutter/material.dart';
import 'package:instagramclone/pages/profilepage.dart/profileimage.dart';
import 'package:instagramclone/pages/profilepage.dart/profilevideo.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        ////title
        appBar: AppBar(
          title: const Text(
            "Bhartha",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
          actions: const [
            Icon(
              Icons.more_vert,
            ),
          ],
        ),
        body: DefaultTabController(
          length: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                //////profile picture,
                const Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://tse1.mm.bing.net/th?id=OIP.oGbDRPLX7UxEyPIsVDCUHgHaHh&pid=Api&P=0&h=180"),
                          radius: 45,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        ////profilename
                        Text(
                          "BHARTHA",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),

                    /////post
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w600),
                        ),
                        Text("Post", style: TextStyle(fontSize: 15))
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),

                    /////followers
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "followers",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),

                    /////following
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "0",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.w600),
                        ),
                        Text("following", style: TextStyle(fontSize: 15))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                /////instagram caption
                const Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi dude",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "whatsup....!",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                /////editprofile button
                Column(
                  children: [
                    GestureDetector(
                      child: Container(
                        height: 30,
                        width: 390,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(9),
                          ),
                        ),
                        child: const Center(
                            child: Text(
                          "Edit profile",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),

                /////tabbar in image and videos
                const TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.image),
                  ),
                  Tab(
                    icon: Icon(Icons.video_camera_front_outlined),
                  )
                ]),
                Expanded(
                  child: TabBarView(children: [
                    ProfileImagePage1(),
                    ProfilevideoPage1(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
