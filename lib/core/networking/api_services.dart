import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:snap_shop/features/cart/data/model/add_or_remove_cart_request_model.dart';
import 'package:snap_shop/features/cart/data/model/add_or_remove_cart_response_model/add_or_remove_cart_response_model.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_response_model.dart';
import 'package:snap_shop/features/home/data/model/categories/categories_response_model.dart';
import 'package:snap_shop/features/home/data/model/categories_details_response_model/categories_details_response_model.dart';
import 'package:snap_shop/features/home/data/model/products/products_response_model.dart';
import 'package:snap_shop/features/login/data/model/login_request_body.dart';
import 'package:snap_shop/features/notification/data/model/notification.dart';
import 'package:snap_shop/features/register/data/models/register_request_body.dart';
import 'package:snap_shop/features/register/data/models/register_response.dart';
import 'package:snap_shop/features/profile/data/model/profile_model/profile_model.dart';
import '../../features/login/data/model/login_response_body.dart';
import 'api_constants.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConstants.login)
  Future<LoginResponseBody> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.register)
  Future<RegisterResponseBody> register(
    @Body() RegisterRequestBody loginRequestBody,
  );

  @GET(ApiConstants.categories)
  Future<CategoriesResponseModel> getCategories();

  @GET(ApiConstants.home)
  Future<ProductsResponseModel> getProducts();

  @GET('categories/{categoryId}')
  Future<CategoriesDetailsResponseModel> getCategoriesDetails(
      @Path("categoryId") int categoryId);

  @GET(ApiConstants.notifications)
  Future<NotificationResponseModel> getNotification();

  @GET(ApiConstants.cart)
  Future<CartResponseModel> getCart();

  @POST(ApiConstants.addOrRemoveCart)
  Future<AddOrRemoveCartResponseModel> addOrRemoveCart(
      @Body() AddOrRemoveCartRequestModel addOrRemoveCartRequestModel);

  @GET(ApiConstants.settings)
  Future<ProfileModel> getProfile();
}
