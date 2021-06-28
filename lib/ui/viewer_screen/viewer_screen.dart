import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/ui/viewer_screen/widgets/viewer_dialog.dart';
import 'package:app_flutter_challenge/utils/colors.dart';
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
    final AlertDialog alert = ViewerDialog(
      img: imageNet,
    );
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
              width: 120,
              height: 60,
              widget: Container(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return alert;
                      },
                    );
                  },
                  child: Card(
                    color: ColorsApp.colorDarkBlueTransparent,
                    elevation: 20,
                    child: Center(
                      child: Text(
                        "Menu",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
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
