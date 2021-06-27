import 'package:flutter/material.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
      borderOnForeground: true,
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            "Museum Viewer 360",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Serif",
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
