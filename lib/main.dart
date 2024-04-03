import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:shayan_detector/home.dart';

List<CameraDescription>? cameras;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());  
}

class MyApp extends StatelessWidget {
  MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}