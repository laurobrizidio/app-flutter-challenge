import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
import 'package:flutter/material.dart';

class ViewerDialog extends AlertDialog {
  final ImageNet img;

  ViewerDialog({required this.img});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Center(
        child: Text(
          img.name == null ? "" : img.name!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      content: Text(
        img.description == null ? "" : img.description!,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      actions: [
        TextButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, RoutesName.goToHome);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.keyboard_return_rounded,
                color: Colors.yellowAccent,
              ),
              Text(
                "Voltar",
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              RoutesName.goToPayment,
              arguments: img,
            );
          },
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.monetization_on_rounded, color: Colors.yellowAccent),
              Text(
                "Crowdfunding",
                softWrap: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
