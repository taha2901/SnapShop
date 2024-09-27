class AddressDataList {
	int? id;
	String? name;
	String? city;
	String? region;
	String? details;
	String? notes;
	double? latitude;
	double? longitude;

	AddressDataList({
		this.id, 
		this.name, 
		this.city, 
		this.region, 
		this.details, 
		this.notes, 
		this.latitude, 
		this.longitude, 
	});

	factory AddressDataList.fromJson(Map<String, dynamic> json) => AddressDataList(
				id: json['id'] as int?,
				name: json['name'] as String?,
				city: json['city'] as String?,
				region: json['region'] as String?,
				details: json['details'] as String?,
				notes: json['notes'] as String?,
				latitude: (json['latitude'] as num?)?.toDouble(),
				longitude: (json['longitude'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toJson() => {
				'id': id,
				'name': name,
				'city': city,
				'region': region,
				'details': details,
				'notes': notes,
				'latitude': latitude,
				'longitude': longitude,
			};
}
