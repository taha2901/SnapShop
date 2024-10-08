import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:snap_shop/features/address/data/model/address_request_model.dart';
import 'package:snap_shop/features/address/data/model/address_response_model/address_response_model.dart';
import 'package:snap_shop/features/address/data/model/get_address_response_model/get_address_response_model.dart';
import 'package:snap_shop/features/cart/data/model/add_or_remove_cart_request_model.dart';
import 'package:snap_shop/features/cart/data/model/add_or_remove_cart_response_model/add_or_remove_cart_response_model.dart';
import 'package:snap_shop/features/cart/data/model/cart_response_model/cart_response_model.dart';
import 'package:snap_shop/features/cart_details/data/models/payment_intent_input.dart';
import 'package:snap_shop/features/cart_details/data/models/payment_intent_response/payment_intent_response.dart';
import 'package:snap_shop/features/favourite/data/model/add_or_remove_cart_request_model.dart';
import 'package:snap_shop/features/favourite/data/model/add_or_remove_favourite_model/add_or_remove_favourite_model.dart';
import 'package:snap_shop/features/favourite/data/model/favourite/favourite.dart';
import 'package:snap_shop/features/home/data/model/categories/categories_response_model.dart';
import 'package:snap_shop/features/home/data/model/categories_details_response_model/categories_details_response_model.dart';
import 'package:snap_shop/features/home/data/model/products/products_response_model.dart';
import 'package:snap_shop/features/login/data/model/login_request_body.dart';
import 'package:snap_shop/features/logout/data/model/logout_response_body/logout_response_body.dart';
import 'package:snap_shop/features/notification/data/model/notification.dart';
import 'package:snap_shop/features/profile/data/model/change_password/change_password.dart';
import 'package:snap_shop/features/profile/data/model/change_password/change_password_request_model.dart';
import 'package:snap_shop/features/profile/data/model/update_profile_request_model.dart';
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

  @POST(ApiConstants.changePassword)
  Future<ChangePasswordResponseModel> changePassword(
    @Body() ChangePasswordRequestModel changePassword,
  );

  @PUT(ApiConstants.updateProfile)
  Future<LoginResponseBody> updateProfile(
    @Body() UpdateProfileRequestModel updateProfileRequestModel,
  );

  @POST(ApiConstants.addresses)
  Future<AddressResponseModel> addAddress(
    @Body() AddressRequestModel addressRequestModel,
  );

  @GET(ApiConstants.addresses)
  Future<GetAddressResponseModel> getAddresses();

  @GET(ApiConstants.favourite)
  Future<FavouriteModel> getFavourite();

  @POST(ApiConstants.favourite)
  Future<AddOrRemoveFavouriteResponseModel> addOrRemoveFavourite(
    @Body() AddOrRemoveFavouriteRequestModel addOrRemoveFavouriteRequestModel,
  );

  @POST('logout')
  Future<LogoutResponseBody> logout(@Body() Map<String, dynamic> body);
}
