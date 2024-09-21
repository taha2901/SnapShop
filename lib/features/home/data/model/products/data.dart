import 'banner.dart';
import 'product.dart';

class ProductsData {
	List<Banner>? banners;
	List<ProductDataList>? products;
	String? ad;

	ProductsData({this.banners, this.products, this.ad});

	factory ProductsData.fromJson(Map<String, dynamic> json) => ProductsData(
				banners: (json['banners'] as List<dynamic>?)
						?.map((e) => Banner.fromJson(e as Map<String, dynamic>))
						.toList(),
				products: (json['products'] as List<dynamic>?)
						?.map((e) => ProductDataList.fromJson(e as Map<String, dynamic>))
						.toList(),
				ad: json['ad'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'banners': banners?.map((e) => e.toJson()).toList(),
				'products': products?.map((e) => e.toJson()).toList(),
				'ad': ad,
			};
}
