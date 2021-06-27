import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
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
    );
  }
}
