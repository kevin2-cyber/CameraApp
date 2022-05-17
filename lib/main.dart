import 'dart:async';

import 'package:camera/camera.dart';
import 'take_picture_screen.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();



  runApp(CameraApp());
}

class CameraApp extends StatelessWidget {
  CameraApp({Key? key}) : super(key: key);


  // Get a specific camera from the list of available cameras.
  final firstCamera =  cameras.first;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        camera: firstCamera,
      ),
    );
  }
}


