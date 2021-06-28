import 'dart:async';

import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:app_flutter_challenge/ui/payment_screen/models/card_info.dart';
import 'package:app_flutter_challenge/ui/payment_screen/widgets/alert_sucess.dart';
import 'package:flutter/material.dart';

class AlertSecurityCode extends AlertDialog {
  final TextEditingController securityDigitCardController;
  final CardInfo cardInfo;
  final String value;
  final BuildContext contextScreen;

  AlertSecurityCode({
    required this.securityDigitCardController,
    required this.value,
    required this.cardInfo,
    required this.contextScreen,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Insira o codigo de segurança"),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              textDirection: TextDirection.ltr,
              children: [
                Text(
                  "Proprietário: " + cardInfo.cardOwner.toString(),
                ),
                Text("Valor: R\$" + value),
              ],
            ),
          ),
          TextField(
            autocorrect: false,
            controller: securityDigitCardController,
            decoration: InputDecoration(
              hintText: "Codigo de Segurança",
            ),
            keyboardType: TextInputType.number,
            maxLength: 3,
          ),
        ],
      ),
      elevation: 16,
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Cancelar"),
        ),
        ElevatedButton(
          onPressed: () {
            cardInfo.setCardValidDigit(securityDigitCardController.text);
            Timer(
              Duration(
                seconds: 2,
              ),
              () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (con) {
                    return AlertSucess();
                  },
                );

                Timer(Duration(seconds: 1), () {
                  Navigator.pushReplacementNamed(
                    contextScreen,
                    RoutesName.goToHome,
                  );
                });
              },
            );
          },
          child: Text("Confirmar"),
        ),
      ],
    );
  }
}
