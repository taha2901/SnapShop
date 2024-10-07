class Data {
	int? id;
	String? token;

	Data({this.id, this.token});

	factory Data.fromJson(Map<String, dynamic> json) => Data(
				id: json['id'] as int?,
				token: json['token'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'token': token,
			};
}
