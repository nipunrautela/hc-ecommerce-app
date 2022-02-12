import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_cube/flutter_cube.dart';

import 'screens/login_screen.dart';

void main() {
  runApp(myApp);
}

MaterialApp myApp = const MaterialApp(
  home: Login(),
  debugShowCheckedModeBanner: false,
);

class Model extends StatefulWidget {
  const Model({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ModelState();
  }
}

class _ModelState extends State<Model> {
  late Object car;

  @override
  void initState() {
    car = Object(fileName: "assets/anime/Anime_character.obj");

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Anime 3D Model"),
      ),
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(car);
            scene.camera.zoom = 10;
            loadImageFromAsset('assets/anime/material.mtl').then((image) {
              car.mesh.texture = image;
              car.mesh.colors = [Colors.black];
              scene.updateTexture();
            });
          },
        ),
      ),
    );
  }
}
