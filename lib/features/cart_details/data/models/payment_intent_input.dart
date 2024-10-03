class PaymentIntentInput {
  final String amount;
  final String currency;

  PaymentIntentInput({required this.amount, required this.currency});

  toJson() {
    return {
      // 'amount': amount,
      'amount': (double.parse(amount) * 100).toInt().toString(), // تحويل إلى سنتات
      'currency': currency
    };
  }
}