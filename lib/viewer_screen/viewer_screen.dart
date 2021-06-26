import 'package:app_flutter_challenge/home_screen/model/image_net.dart';
import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class Viewer extends StatefulWidget {
  final ImageNet imageNet;

  Viewer({required this.imageNet});

  @override
  State<StatefulWidget> createState() => ViewerState(imageNet: imageNet);
}

class ViewerState extends State<Viewer> {
  final ImageNet imageNet;

  ViewerState({required this.imageNet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Panorama(
          child: Image.network(
            imageNet.url!,
          ),
          interactive: true,
        ),
      ),
    );
  }
}
