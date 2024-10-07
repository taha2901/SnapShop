class AddressRequestModel {
	String? name;
	String? city;
	String? region;
	String? details;
	double? latitude;
	double? longitude;
	String? notes;

	AddressRequestModel({
		this.name, 
		this.city, 
		this.region, 
		this.details, 
		this.latitude, 
		this.longitude, 
		this.notes, 
	});

	factory AddressRequestModel.fromJson(Map<String, dynamic> json) {
		return AddressRequestModel(
			name: json['name'] as String?,
			city: json['city'] as String?,
			region: json['region'] as String?,
			details: json['details'] as String?,
			latitude: (json['latitude'] as num?)?.toDouble(),
			longitude: (json['longitude'] as num?)?.toDouble(),
			notes: json['notes'] as String?,
		);
	}



	Map<String, dynamic> toJson() => {
				'name': name,
				'city': city,
				'region': region,
				'details': details,
				'latitude': latitude,
				'longitude': longitude,
				'notes': notes,
			};
}
