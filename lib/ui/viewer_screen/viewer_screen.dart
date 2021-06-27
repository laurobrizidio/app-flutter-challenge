import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
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
          hotspots: [
            Hotspot(
              latitude: imageNet.latitude,
              longitude: imageNet.longitude,
              widget: Container(
                padding: EdgeInsets.all(10),
                width: 120,
                height: 50,
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacementNamed(
                    context,
                    RoutesName.goToSplash,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "MENU",
                        softWrap: false,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
