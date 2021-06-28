import 'package:flutter/material.dart';

class ListTileDrawer extends StatelessWidget {
  final String text;
  final IconData iconData;

  const ListTileDrawer({
    Key? key,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
      subtitle: Icon(
        iconData,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
