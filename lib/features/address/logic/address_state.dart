part of 'address_cubit.dart';

@freezed
class AddressState<T> with _$AddressState {
  const factory AddressState.initial() = _Initial;

  const factory AddressState.addressLoading() = AddressLoading;

  const factory AddressState.addressSuccess(T data) = AddressSuccing<T>;

  const factory AddressState.addressError({required String error}) = AddressError;
}
