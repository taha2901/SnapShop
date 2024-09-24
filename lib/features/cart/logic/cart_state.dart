part of 'cart_cubit.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.initial() = _Initial;

  const factory CartState.cartloading() = CartLoading;

  const factory CartState.cartsuccess({required List<CartItem>? cartDataList}) = CartSuccess;

  const factory CartState.carterror({required ErrorHandler error}) = CartError;
}
