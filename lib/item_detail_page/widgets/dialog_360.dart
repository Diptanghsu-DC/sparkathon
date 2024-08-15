// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class Dialog360 extends StatefulWidget {
  const Dialog360({super.key});

  @override
  State<Dialog360> createState() => _Dialog360State();
}

class _Dialog360State extends State<Dialog360> {
  List<ImageProvider> imageList = <ImageProvider>[];
  bool autoRotate = false;
  int rotationCount = 22;
  int swipeSensitivity = 2;
  bool allowSwipeToRotate = true;
  bool imagePrecached = true;

  @override
  void initState() {
    super.initState();
    updateImageList(context);
  }

  void updateImageList(BuildContext context) {
    for (int i = 1; i <= 21; i++) {
      imageList.add(AssetImage('assets/image/s$i.png'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      //backgroundColor: Color(0xff222224),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.only(bottom: 11, left: 12, right: 12),
      child: Container(
        height: 400,
        padding: EdgeInsets.all(12),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 70),
                child: Image.asset("assets/image/ring.png"),
              ),
            ),
            ImageView360(
              key: UniqueKey(),
              imageList: imageList,
              autoRotate: autoRotate,
              rotationCount: rotationCount,
              swipeSensitivity: swipeSensitivity,
              allowSwipeToRotate: allowSwipeToRotate,
              onImageIndexChanged: (currentImageIndex) {
                print("currentImageIndex: $currentImageIndex");
              },
            ),
          ],
        ),
      ),
    );
  }
}
