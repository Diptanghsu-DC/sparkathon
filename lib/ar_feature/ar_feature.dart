import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ARFeatureScreen extends StatefulWidget {
  const ARFeatureScreen({super.key});

  @override
  State<ARFeatureScreen> createState() => _ARFeatureScreenState();
}

class _ARFeatureScreenState extends State<ARFeatureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModelViewer(
          // src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
          src: 'assets/uploads_files_3784260_Laptop.glb',
          alt: "A 3D model of an astronaut",
          ar: true,
          autoRotate: true,
          cameraControls: true,
        ),);
  }
}