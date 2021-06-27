import 'package:app_flutter_challenge/ui/home_screen/controller/home_controller.dart';
import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/ui/home_screen/view/widgets/ImageComponent.dart';
import 'package:app_flutter_challenge/ui/nav_drawer/nav_drawer.dart';
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
    List<ImageNet> images = HomeController.getImages();
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
          child: Container(
            color: Color(0xFF1F1E2C),
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Row(
              children: [
                NavigationDrawer(constraints: constraints),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Text(
                              "Museum Viewer 360",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Ola",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            itemExtent: constraints.maxHeight * .5,
                            children: getImagesWidget(images),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                "Developed by Lauro Brizidio",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Divider(
                                height: 8,
                              ),
                              Text(
                                "Flutter App",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

getImagesWidget(List<ImageNet> images) {
  List<ImageComponent> widgetImages = [];
  images.forEach((image) {
    widgetImages.add(ImageComponent(img: image));
  });
  return widgetImages;
}
