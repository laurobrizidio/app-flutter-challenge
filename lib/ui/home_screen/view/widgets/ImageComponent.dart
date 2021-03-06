import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/ui/home_screen/view/widgets/ImageWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageComponent extends StatelessWidget {
  final ImageNet img;

  ImageComponent({required this.img});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          img.name!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: "Times",
          ),
        ),
      ),
      Expanded(
        child: ImageWidget(img: img),
      ),
    ]);
  }
}
