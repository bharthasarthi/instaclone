/* 
This is a post page in Instagram. That is the sixth page in the Instagram clone.
it is used in image pick function,button and camera take function and button.


***/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  File? selectimg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////title
      appBar: AppBar(
        title: Text("post"),
      ),
      body: Center(

          ////image pick button
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.black,
              child: const Text(
                "pick image from gallery",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                pickimage();
              }),

          ////take camera button
          MaterialButton(
              color: Colors.black,
              child: const Text(
                "pick take from camera",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                takecamera();
              }),
          const SizedBox(
            height: 20,
          ),

          ///
          selectimg != null
              ? Image.file(selectimg!)
              : Text("Please selected an image"),
        ],
      )),
    );
  }

  Future pickimage() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnImage == null) return;
    setState(() {
      selectimg = File(returnImage.path);
    });
  }

  Future takecamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectimg = File(returnImage.path);
    });
  }
}
