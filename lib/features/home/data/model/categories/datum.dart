class CategoriesDataList {
	int? id;
	String? name;
	String? image;

	CategoriesDataList({this.id, this.name, this.image});

	factory CategoriesDataList.fromJson(Map<String, dynamic> json) => CategoriesDataList(
				id: json['id'] as int?,
				name: json['name'] as String?,
				image: json['image'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'image': image,
			};
}
