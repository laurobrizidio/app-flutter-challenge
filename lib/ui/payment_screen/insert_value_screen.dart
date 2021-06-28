import 'package:app_flutter_challenge/ui/payment_screen/models/card_info.dart';
import 'package:app_flutter_challenge/ui/payment_screen/widgets/alert_security_code.dart';
import 'package:app_flutter_challenge/utils/colors.dart';
import 'package:flutter/material.dart';

class InsertValueScreen extends StatefulWidget {
  final CardInfo cardInfo;

  InsertValueScreen({required this.cardInfo});

  @override
  State<StatefulWidget> createState() => InsertValueState(cardInfo: cardInfo);
}

class InsertValueState extends State<InsertValueScreen> {
  late AlertSecurityCode alert;
  CardInfo cardInfo;
  TextEditingController value = TextEditingController();

  TextEditingController securityDigitCardController = TextEditingController();

  InsertValueState({required this.cardInfo});

  @override
  void initState() {
    value.addListener(() => setState(() {}));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inserir Valor"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                "R\$ " + value.text,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: true,
                obscuringCharacter: " ",
                textAlign: TextAlign.center,
                autocorrect: false,
                showCursor: false,
                controller: value,
                decoration: InputDecoration(
                  hintText: "Valor",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      ColorsApp.colorDarkBlueTransparent,
                    ),
                  ),
                  child: Text(
                    "Voltar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    alert = AlertSecurityCode(
                      securityDigitCardController: securityDigitCardController,
                      value: value.text,
                      cardInfo: cardInfo,
                    );

                    showDialog(context: context, builder: (context) => alert);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueAccent,
                    ),
                  ),
                  child: Text(
                    "Pagar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
