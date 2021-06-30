import 'package:app_flutter_challenge/routes/RoutesName.dart';
import 'package:app_flutter_challenge/ui/home_screen/model/image_net.dart';
import 'package:app_flutter_challenge/ui/payment_screen/models/card_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card_brazilian/flutter_credit_card.dart';

class PaymentPage extends StatefulWidget {
  final ImageNet image;

  PaymentPage({required this.image});

  @override
  State<StatefulWidget> createState() => StatePayment(image: image);
}

class StatePayment extends State<PaymentPage> {
  final ImageNet image;

  TextEditingController cardOwnerController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardDateNumberController = TextEditingController();

  StatePayment({required this.image});

  @override
  void initState() {
    super.initState();
    cardOwnerController.addListener(
      () => setState(() {}),
    );
    cardNumberController.addListener(
      () => setState(() {}),
    );
    cardDateNumberController.addListener(
      () => setState(() {}),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          title: Text(image.name!),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                buildCreditCard(constraints),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      buildCardOwnerTextField(),
                      buildCardNumberTextField(),
                      buildExpirationDateTextField(),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            RoutesName.goToInsertValue,
                            arguments: CardInfo(
                              cardOwner: cardOwnerController.text,
                              cardExpirationDate: cardOwnerController.text,
                              cardNumber: cardNumberController.text,
                            ),
                          );
                        },
                        color: Colors.blueAccent,
                        child: Text(
                          "Prosseguir",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  TextField buildCardOwnerTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Nome do Titular",
        suffixIcon: Icon(
          Icons.person,
        ),
      ),
      maxLines: 1,
      controller: cardOwnerController,
      keyboardType: TextInputType.name,
    );
  }

  TextField buildCardNumberTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Numero do Cartão",
      ),
      maxLines: 1,
      maxLength: 16,
      obscureText: false,
      controller: cardNumberController,
      keyboardType: TextInputType.number,
    );
  }

  TextField buildExpirationDateTextField() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Data de Validade",
      ),
      maxLines: 1,
      controller: cardDateNumberController,
      keyboardType: TextInputType.datetime,
    );
  }

  CreditCardWidget buildCreditCard(BoxConstraints constraints) {
    return CreditCardWidget(
      cardHolderName: cardOwnerController.text,
      showBackView: false,
      cvvCode: "",
      expiryDate: cardDateNumberController.text,
      cardNumber: cardNumberController.text,
    );
  }
}

Padding buildTextInCard(
    {required String text,
    required TextEditingController controller,
    TextStyle? controllerStyle}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
        Text(
          controller.text,
          style: controllerStyle == null
              ? TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              : controllerStyle,
        ),
      ],
    ),
  );
}
