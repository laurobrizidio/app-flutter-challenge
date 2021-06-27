import 'package:flutter/material.dart';

class ShortMenuHome extends StatelessWidget {
  const ShortMenuHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CardItemShortMenu(
            text: "Pagamentos",
            iconData: Icons.monetization_on_outlined,
          ),
          CardItemShortMenu(
            text: "Visitas",
            iconData: Icons.people_alt_rounded,
          ),
          CardItemShortMenu(
            text: "360",
            iconData: Icons.image_rounded,
          )
        ],
      ),
    );
  }
}

class CardItemShortMenu extends StatelessWidget {
  final String text;
  final IconData iconData;

  const CardItemShortMenu({
    Key? key,
    required this.text,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 16,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.yellow,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                color: Colors.yellowAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
