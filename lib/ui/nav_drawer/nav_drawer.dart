import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'list_tile_drawer.dart';

class NavigationDrawer extends StatelessWidget {
  final BoxConstraints constraints;

  const NavigationDrawer({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Color(0xFF000011),
          width: constraints.maxWidth * 0.2,
          height: constraints.maxHeight,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTileDrawer(
                text: "Home",
                iconData: Icons.home,
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RoutesName.goToHome);
                },
              ),
              ListTileDrawer(
                text: "Logout",
                iconData: Icons.logout,
                onPressed: () => SystemNavigator.pop(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
