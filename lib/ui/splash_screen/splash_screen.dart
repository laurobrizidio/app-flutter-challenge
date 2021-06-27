import 'dart:async';

import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: SplashPage());
  }
}

class SplashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashInitState();
  }
}

class SplashInitState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

// Timer of 3 seconds to wait load Home Screen
    Timer(
      Duration(milliseconds: 2500),
      () {
        Navigator.pushReplacementNamed(context, RoutesName.goToHome);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //Set Statusbar
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            onTap: () {
              setState(() {
                SystemChrome.setEnabledSystemUIOverlays(
                    [SystemUiOverlay.top, SystemUiOverlay.bottom]);
              });
            },
            child: Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: Color(0xFF181818),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  textDirection: TextDirection.ltr,
                  children: [
                    Icon(
                      Icons.museum_outlined,
                      size: 90,
                      color: Colors.white,
                    ),
                    Center(
                      child: Text(
                        "360 Museum Viewer",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Times",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
