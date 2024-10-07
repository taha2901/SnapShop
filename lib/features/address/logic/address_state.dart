part of 'address_cubit.dart';

@freezed
class AddressState<T> with _$AddressState {
  const factory AddressState.initial() = _Initial;

  const factory AddressState.addAddressLoading() = AddAddressLoading;

  const factory AddressState.addAddressSuccess(T data) = AddAddressSuccing<T>;

  const factory AddressState.addAddressError({required String error}) = AddAddressError;

  //address

  const factory AddressState.addressLoading() = AddressLoading;

  const factory AddressState.addressSuccess({required List<AddressDataList> data}) = AddressSuccing;

  const factory AddressState.addressError({required ErrorHandler? error }) = AddressError;

}
