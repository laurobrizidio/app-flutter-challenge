import 'package:app_flutter_challenge/home_screen/controller/home_controller.dart';
import 'package:app_flutter_challenge/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/home_screen/view/widgets/ImageWidget.dart';
import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    List<ImageNet> images = HomeController.getImages();

    return GestureDetector(
      onTap: () {
        setState(() {
          SystemChrome.setEnabledSystemUIOverlays(
            [
              SystemUiOverlay.bottom,
            ],
          );
        });
      },
      child: Scaffold(
        backgroundColor: Color(0xFF1F1E2C),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: constraints.maxWidth * .2,
                  color: Color(0xFF181818),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(
                          context,
                          RoutesName.goToSplash,
                        ),
                        child: Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => SystemNavigator.pop(animated: true),
                        child: Icon(
                          Icons.logout,
                          color: Colors.white,
                          size: 40,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  width: constraints.maxWidth * 0.7,
                  height: constraints.maxHeight,
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return ListView(
                        scrollDirection: Axis.vertical,
                        children: getImagesWidget(images),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

getImagesWidget(List<ImageNet> images) {
  List<ImageWidget> widgetImages = [];
  images.forEach((image) {
    widgetImages.add(ImageWidget(img: image));
  });

  return widgetImages;
}
