/*
 
This is a search page in Instagram. That is the fifth page in the Instagram clone.
It is used in the search text field,four image containers, and one image container.

  
 **/

import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          /////Textfield in Search
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'search',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              const SizedBox(
                height: 3,
              ),

              //////search image in four image container and one image in conatiner
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        fourimage('lib/assets/nat1.jpeg', 'lib/assets/nat2.jpg',
                            'lib/assets/nat3.jpg', 'lib/assets/nat4.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        oneimage('lib/assets/nat1.jpeg'),
                        const SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        oneimage('lib/assets/mob.jpeg'),
                        const SizedBox(
                          width: 5,
                        ),
                        fourimage('lib/assets/car1.jpeg', 'lib/assets/car2.jpg',
                            'lib/assets/car3.jpg', 'lib/assets/nat4.jpg'),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        fourimage('lib/assets/nat1.jpeg', 'lib/assets/nat2.jpg',
                            'lib/assets/nat3.jpg', 'lib/assets/nat4.jpg'),
                        const SizedBox(
                          width: 5,
                        ),
                        oneimage('lib/assets/nat1.jpeg'),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        oneimage('lib/assets/mob.jpeg'),
                        const SizedBox(
                          width: 5,
                        ),
                        fourimage('lib/assets/car1.jpeg', 'lib/assets/car2.jpg',
                            'lib/assets/car3.jpg', 'lib/assets/nat4.jpg'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

/////method used in one image in container
  Container oneimage(oneimg) {
    return Container(
      height: 285,
      width: 150,
      color: Colors.red,
      child: Image.asset(
        oneimg,
        fit: BoxFit.fill,
      ),
    );
  }

  /////method used in four image in container

  Row fourimage(img1, img2, img3, img4) {
    return Row(
      children: [
        Container(
          height: 290,
          width: 250,
          //color: Colors.black,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140,
                    width: 120,
                    color: Colors.blue,
                    child: Image.asset(
                      img1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 140,
                    width: 125,
                    color: Colors.green,
                    child: Image.asset(
                      img2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 140,
                    width: 120,
                    color: Colors.blue,
                    child: Image.asset(
                      img3,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 140,
                    width: 125,
                    color: Colors.green,
                    child: Image.asset(
                      img4,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
