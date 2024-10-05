class PaymentIntentResponse {
	String? id;
	dynamic amount;
	dynamic currency;
	List<dynamic>? paymentMethodTypes;
  String? clientSecret;
	
	PaymentIntentResponse({
		this.id, 
		this.amount, 
		this.currency, 
    this.clientSecret,
		this.paymentMethodTypes, 
		});

	factory PaymentIntentResponse.fromJson(Map<String, dynamic> json) {
		return PaymentIntentResponse(
			id: json['id'] as String?,
			amount: json['amount'] as dynamic,
			currency: json['currency'] as dynamic,
      clientSecret: json['client_secret'] as String?,
			paymentMethodTypes: json['payment_method_types'] as List<dynamic>?,
		);
	}



	Map<String, dynamic> toJson() => {
				'id': id,
				'amount': amount,
				'currency': currency,
				'payment_method_types': paymentMethodTypes,
        'client_secret': clientSecret
			};
}
