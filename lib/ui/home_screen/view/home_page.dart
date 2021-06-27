import 'package:app_flutter_challenge/ui/home_screen/controller/home_controller.dart';
import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/ui/home_screen/view/widgets/ImageComponent.dart';
import 'package:app_flutter_challenge/ui/home_screen/view/widgets/footer.dart';
import 'package:app_flutter_challenge/ui/home_screen/view/widgets/home_title_widget.dart';
import 'package:app_flutter_challenge/ui/home_screen/view/widgets/short_menu_home.dart';
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
                HomeContent(
                  images: images,
                  constraints: constraints,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
    required this.images,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  final List<ImageNet> images;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            HomeTitleWidget(),
            ShortMenuHome(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                itemExtent: constraints.maxHeight * .5,
                children: getImagesWidget(images),
              ),
            ),
            FooterWidget(),
          ],
        ),
      ),
    );
  }
}

getImagesWidget(List<ImageNet> images) {
  List<Widget> widgetImages = [];
  images.forEach((image) {
    widgetImages.add(ImageComponent(img: image));
  });
  return widgetImages;
}
