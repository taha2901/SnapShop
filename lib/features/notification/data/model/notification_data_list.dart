class NotificationDataList {
	int? id;
	String? title;
	String? message;

	NotificationDataList({this.id, this.title, this.message});

	factory NotificationDataList.fromJson(Map<String, dynamic> json) => NotificationDataList(
				id: json['id'] as int?,
				title: json['title'] as String?,
				message: json['message'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'title': title,
				'message': message,
			};
}
