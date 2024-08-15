// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class DialogAr extends StatefulWidget {
  const DialogAr({super.key});

  @override
  State<DialogAr> createState() => _DialogArState();
}

class _DialogArState extends State<DialogAr> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.only(bottom: 11, left: 12, right: 12),
      child: Container(
        height: 400,
        padding: EdgeInsets.all(12),
        child: ModelViewer(
          // src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
          src: 'assets/uploads_files_3784260_Laptop.glb',
          alt: "A 3D model of an astronaut",
          ar: true,
          autoRotate: true,
          cameraControls: true,
        ),
      ),
    );
  }
}
