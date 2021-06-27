import 'package:flutter/material.dart';

import 'home_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: HomePage(),
      ),
    );
  }
}
