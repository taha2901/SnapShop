class PaymentIntentResponse {
	String? id;
	dynamic amount;
	// dynamic amountCapturable;
	// AmountDetails? amountDetails;
	// dynamic amountReceived;
	dynamic currency;
	// PaymentMethodOptions? paymentMethodOptions;
	List<dynamic>? paymentMethodTypes;
  String? clientSecret;
	
	PaymentIntentResponse({
		this.id, 
		this.amount, 
		// this.amountCapturable, 
		// this.amountDetails, 
		// this.amountReceived, 
		this.currency, 
    this.clientSecret,
		// this.paymentMethodOptions, 
		this.paymentMethodTypes, 
		});

	factory PaymentIntentResponse.fromJson(Map<String, dynamic> json) {
		return PaymentIntentResponse(
			id: json['id'] as String?,
			amount: json['amount'] as dynamic,
			// amountCapturable: json['amount_capturable'] as int?,
			// amountReceived: json['amount_received'] as int?,
			currency: json['currency'] as dynamic,
      clientSecret: json['client_secret'] as String?,
			paymentMethodTypes: json['payment_method_types'] as List<dynamic>?,
		);
	}



	Map<String, dynamic> toJson() => {
				'id': id,
				'amount': amount,
				// 'amount_capturable': amountCapturable,
				// 'amount_details': amountDetails?.toJson(),
				// 'amount_received': amountReceived,
				'currency': currency,
				// 'payment_method_options': paymentMethodOptions?.toJson(),
				'payment_method_types': paymentMethodTypes,
        'client_secret': clientSecret
			};
}
