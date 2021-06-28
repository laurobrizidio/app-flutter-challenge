class CardInfo {
  CardInfo({
    required this.cardOwner,
    required this.cardNumber,
    required this.cardExpirationDate,
  });

  String? cardNumber;
  String? cardOwner;
  String? cardExpirationDate;
  String? cardValidDigit;

  void setCardValidDigit(String cardValidDigit) {
    this.cardValidDigit = cardValidDigit;
  }
}
