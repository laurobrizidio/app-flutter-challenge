import 'package:flutter/material.dart';

class AlertSucess extends AlertDialog {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Icon(
        Icons.check,
        color: Colors.green,
        size: 100,
      ),
      elevation: 20,
      backgroundColor: Colors.white70,
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Pagamento realizado com Sucesso!",
          )
        ],
      ),
    );
  }
}
