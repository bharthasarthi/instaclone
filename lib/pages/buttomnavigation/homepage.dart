/*
This is the Homepage of Instagram. That is a fourth page in the Instagram clone.
It is used in story circle avatars, profile pictures,name,image feeds,  share comment icons, and captions lines.


 **/

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////LOGO and message icon
      appBar: AppBar(
        title: Image.network(
          "https://logos-world.net/wp-content/uploads/2020/04/Instagram-Logo-2010-2013.png",
          height: 75,
        ),
        actions: const [
          Icon(
            Icons.message_outlined,
            size: 30,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,

/////////Instagram story circle avatar

                child: Row(
                  children: [
                    circleavat(
                        "https://tse1.mm.bing.net/th?id=OIP.oGbDRPLX7UxEyPIsVDCUHgHaHh&pid=Api&P=0&h=180",
                        "bhartha"),
                    circleavat(
                        "https://i.pinimg.com/originals/63/f9/d5/63f9d5fd5f34c8544a31c22c3e909cec.jpg",
                        "leena"),
                    circleavat(
                        "https://i.pinimg.com/originals/49/1a/d2/491ad2a14e8c7e1e5a0051c2c270bdbc.jpg",
                        "ram"),
                    circleavat(
                        "https://i.pinimg.com/736x/fa/62/73/fa6273f339ebfd04ee918f86b4212cf1.jpg",
                        "rita"),
                    circleavat(
                        "https://tse2.mm.bing.net/th?id=OIP.sIp5sY7HFl_PeoyXcXnLkgHaHa&pid=Api&P=0&h=180",
                        "leo"),
                    circleavat(
                        "https://tse1.explicit.bing.net/th?id=OIP.Pz_bHJpo39lqPlzRncpxUgHaHa&pid=Api&P=0&h=180",
                        "sarathi"),
                    circleavat(
                        "https://tse2.mm.bing.net/th?id=OIP.sIp5sY7HFl_PeoyXcXnLkgHaHa&pid=Api&P=0&h=180",
                        "sri"),
                    circleavat(
                        "https://tse1.mm.bing.net/th?id=OIP.oGbDRPLX7UxEyPIsVDCUHgHaHh&pid=Api&P=0&h=180",
                        "vijay"),
                  ],
                ),
              ),
            ),

            /////////Instagram person image,name,time,comments,and profile
            Column(
              children: [
                imagefeed(
                    "leena",
                    "https://i.pinimg.com/originals/63/f9/d5/63f9d5fd5f34c8544a31c22c3e909cec.jpg",
                    "https://i.pinimg.com/originals/fc/3a/fc/fc3afce22e69c0ddedaf31d54a9dcc26.jpg",
                    "leena",
                    "good",
                    "1 hr",
                    "view all 5 comments"),
                imagefeed(
                    "rita",
                    "https://i.pinimg.com/736x/fa/62/73/fa6273f339ebfd04ee918f86b4212cf1.jpg",
                    "https://i.pinimg.com/originals/81/98/19/819819d5b42fb66280edd3426d401929.jpg",
                    "rita",
                    "sometime.........",
                    "50 min",
                    "view all 10 comments"),
                imagefeed(
                    "ram",
                    "https://i.pinimg.com/originals/49/1a/d2/491ad2a14e8c7e1e5a0051c2c270bdbc.jpg",
                    "https://i.pinimg.com/originals/84/89/af/8489af628751c3391ee1f6a26aeac898.jpg",
                    "rita",
                    "do it!",
                    "3 min",
                    "view all 5 comments"),
                imagefeed(
                    "bhartha",
                    "https://tse1.mm.bing.net/th?id=OIP.oGbDRPLX7UxEyPIsVDCUHgHaHh&pid=Api&P=0&h=180",
                    "https://i.pinimg.com/originals/28/3a/b1/283ab1108ef8e379a2e555de019e1aee.jpg",
                    "bhartha",
                    "=>=>=>=>=>=>?",
                    "2 hr",
                    "view all 8 comments"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  //////it is method used in person image,name,time,comments,and profile

  Container imagefeed(name, profile, image, name2, caption, time, comments) {
    return Container(
      height: 590,
      width: 450,
      child: Column(
        children: [
          /////profile ,name,more icon
          Container(
            height: 80,
            width: 458,
            child: Row(
              children: [
                CircleAvatar(
                    radius: 30, backgroundImage: NetworkImage(profile)),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: 310,
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 23),
                  ),
                ),
                Icon(Icons.more_vert),
              ],
            ),
          ),

          /////instragram feed image
          Container(
            height: 370,
            width: 408,
            //color: Colors.black,
            child: Image.network(image),
          ),
          const SizedBox(
            height: 10,
          ),

          /////like,comment,share,save icons and png
          Container(
            child: const Row(
              children: [
                Icon(
                  Icons.favorite_outline_sharp,
                  size: 30,
                ),
                SizedBox(
                  width: 9,
                ),
                Image(
                  image: NetworkImage(
                      "https://www.pinclipart.com/picdir/big/571-5717511_comment-instagram-icon-png-clipart.png"),
                  height: 20,
                ),
                SizedBox(
                  width: 9,
                ),
                Image(
                  image: NetworkImage(
                      "https://toppng.com/uploads/thumbnail/icon-icon-icon-icon-instagram-share-icon-11563216824hch3urqvao.png"),
                  height: 23,
                ),
                SizedBox(
                  width: 290,
                ),
                Image(
                  image: NetworkImage(
                      "https://i.pinimg.com/originals/1a/77/b8/1a77b82fa5cf6252cb3169e29c613d85.png"),
                  height: 23,
                ),
              ],
            ),
          ),

          //////Likes
          Row(
            children: [
              const Text(
                "0 Likes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 285,
              ),
              Text(time, style: TextStyle(fontSize: 17)),
            ],
          ),

          /////caption
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: name2,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    TextSpan(
                        text: caption, style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),

          /////comments
          Row(
            children: [
              Text(
                comments,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }

//////it is method used in Instagram story circle avatar
  Padding circleavat(image, text) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              radius: 45,
              child: CircleAvatar(
                radius: 42,
                backgroundImage: NetworkImage(image),
              ),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
