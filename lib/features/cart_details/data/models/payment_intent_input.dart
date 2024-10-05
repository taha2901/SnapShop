class PaymentIntentInput {
  final String amount;
  final String currency;
  // final String customerId;

  PaymentIntentInput({
    // required this.customerId,
    required this.amount,
    required this.currency,
  });

  toJson() {
    return {
      'amount':
          (double.parse(amount) * 100).toInt().toString(), // تحويل إلى سنتات
      'currency': currency,
      // 'customer': customerId
    };
  }
}
