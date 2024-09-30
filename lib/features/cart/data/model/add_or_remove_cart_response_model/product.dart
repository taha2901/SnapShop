class AddOrRemoveCartProduct {
	int? id;
	dynamic price;
	dynamic oldPrice;
	int? discount;
	String? image;
	String? name;
	String? description;

	AddOrRemoveCartProduct({
		this.id, 
		this.price, 
		this.oldPrice, 
		this.discount, 
		this.image, 
		this.name, 
		this.description, 
	});

	factory AddOrRemoveCartProduct.fromJson(Map<String, dynamic> json) => AddOrRemoveCartProduct(
				id: json['id'] as int?,
				price: json['price'] as dynamic,
				oldPrice: json['old_price'] as dynamic,
				discount: json['discount'] as int?,
				image: json['image'] as String?,
				name: json['name'] as String?,
				description: json['description'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'price': price,
				'old_price': oldPrice,
				'discount': discount,
				'image': image,
				'name': name,
				'description': description,
			};
}
