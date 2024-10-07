class ChangePasswordRequestModel {
	String? currentPassword;
	String? newPassword;

	ChangePasswordRequestModel({this.currentPassword, this.newPassword});

	factory ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) {
		return ChangePasswordRequestModel(
			currentPassword: json['current_password'] as String?,
			newPassword: json['new_password'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'current_password': currentPassword,
				'new_password': newPassword,
			};
}
