import 'package:app_flutter_challenge/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageWidget extends StatelessWidget {
  final ImageNet img;

  ImageWidget({required this.img});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onTap: () => Navigator.pushNamed(context, RoutesName.goToViewer,
              arguments: img),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              textDirection: TextDirection.ltr,
              children: [
                Center(
                    child: Column(
                  children: [
                    Text(
                      img.name!,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                      width: double.infinity,
                    ),
                    Container(
                      child: Image.network(img.url!),
                    ),
                    SizedBox(
                      height: 25,
                      width: double.infinity,
                    )
                  ],
                )),
              ],
            ),
          ),
        );
      },
    );
  }
}
