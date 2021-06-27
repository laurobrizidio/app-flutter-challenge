import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.img}) : super(key: key);

  final ImageNet img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.pushNamed(
          context,
          RoutesName.goToViewer,
          arguments: img,
        )
      },
      child: Container(
        child: Card(
          color: ColorsApp.colorDarkBlue,
          elevation: 16,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: Image(
                  image: NetworkImage(img.url!),
                ).image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
