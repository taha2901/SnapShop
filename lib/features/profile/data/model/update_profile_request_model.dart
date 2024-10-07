class UpdateProfileRequestModel {
	String? name;
	String? email;
  String? phone;

	UpdateProfileRequestModel({
    this.name,
    this.email,
    this.phone,});

	factory UpdateProfileRequestModel.fromJson(Map<String, dynamic> json) {
		return UpdateProfileRequestModel(
			name: json['name'] as String?,
			email: json['email'] as String?,
      phone: json['phone'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'name': name,
				'email': email,
        'phone': phone,
			};
}
