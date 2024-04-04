/* 
This is a notification page in Instagram. That is the seventh page in the Instagram clone.
it is used in follow request list ,following request list and,this week liked list.


**/

import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        ///title
        appBar: AppBar(
          title: const Text("Notification"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              /////follow request list
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        "http://proheadshots.today/wp-content/uploads/2019/01/face-facial-hair-low.jpg"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Column(
                    children: [
                      Text(
                        "Follow request",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Apporve or ignore",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 85,
                  ),

                  //////follow request button
                  GestureDetector(
                    child: Container(
                      height: 28,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: const Center(
                          child: Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(Icons.close),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              ////totday text
              const Row(
                children: [
                  Text(
                    "Today",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              //////following request accept list
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        "https://tse2.mm.bing.net/th?id=OIP.IrUBHhdMo6wWLFueKNreRwHaHa&pid=Api&P=0&h=180"),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "manick_bhatsha",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "started following today",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 85,
                  ),
                  GestureDetector(
                    child: Container(
                      height: 28,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: const Center(
                          child: Text(
                        "Following",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              /////text this week
              const Row(
                children: [
                  Text(
                    "This week",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                ],
              ),

              /////this week like and comment list notification
              Column(
                children: [
                  likes(
                      "https://www.kevinashleyphotography.com/wp-content/uploads/2015/11/person(pp_w480_h610).jpg",
                      "MARI_SINGAM",
                      "https://tse3.mm.bing.net/th?id=OIP.aYTnCKTMqnsZF4SFSWaP6wHaJQ&pid=Api&P=0&h=180"),
                  const SizedBox(
                    height: 20,
                  ),
                  likes(
                      "https://www.kevinashleyphotography.com/wp-content/uploads/2015/11/person(pp_w480_h610).jpg",
                      "MARI_SINGAM",
                      "https://www.samanthasbell.com/wp-content/uploads/2016/06/draw-25-animals-e1466284743465.jpg"),
                  const SizedBox(
                    height: 20,
                  ),
                  likes(
                      "https://www.kevinashleyphotography.com/wp-content/uploads/2015/11/person(pp_w480_h610).jpg",
                      "MARI_SINGAM",
                      "https://www.artmajeur.com/medias/hd/g/r/greigjay8/artwork/13100876_mountains.jpg"),
                  const SizedBox(
                    height: 20,
                  ),
                  likes(
                      "https://c.pxhere.com/photos/dd/a6/business_man_businessman_corporate_suit_executive_successful_entrepreneur-675843.jpg!d",
                      "tiros",
                      "http://1.bp.blogspot.com/_P0WqsgU2GPU/S-WtG9aWUWI/AAAAAAAAAEw/x67HVQOuCJQ/s1600/BIRDSKETCH.jpg")
                ],
              ),
            ])));
  }

  /////this method for week like and comment list notification

  Row likes(img1, text, imag2) {
    return Row(children: [
      CircleAvatar(
        radius: 35,
        backgroundImage: NetworkImage(img1),
      ),
      const SizedBox(
        width: 8,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
          ),
          const Row(
            children: [
              Icon(
                Icons.favorite_border,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "reply",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              SizedBox(
                width: 70,
              ),
            ],
          ),
        ],
      ),
      const SizedBox(
        width: 130,
      ),
      Image.network(
        imag2,
        height: 50,
      ),
    ]);
  }
}
