part of 'cart_cubit.dart';

@freezed
class CartState<T> with _$CartState<T> {
  const factory CartState.initial() = _Initial;

  const factory CartState.cartloading() = CartLoading;

  const factory CartState.cartsuccess({required List<CartItem>? cartDataList}) =
      CartSuccess;

  const factory CartState.carterror({required ErrorHandler error}) = CartError;

  //addOrRemoveCart
  const factory CartState.addOrRemoveCartSuccess(T data) =
      AddOrRemoveCartSuccess<T>;

  const factory CartState.addOrRemoveCartError({required ErrorHandler error}) =
      AddOrRemoveCartError;
}
