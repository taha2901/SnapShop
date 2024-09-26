part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.profileLoading() = ProfileLoading;

  const factory ProfileState.profileSuccess({required ProfileModel? profileModel}) = ProfileSuccess;

  const factory ProfileState.profileError({required ErrorHandler errorHandler}) = ProfileError;

  // change password
  const factory ProfileState.changePasswordLoading() = ChangePasswordLoading;

  const factory ProfileState.changePasswordSuccess(
      {required ChangePasswordResponseModel? changePasswordResponseModel}) = ChangePasswordSuccess;

  const factory ProfileState.changePasswordError({required ErrorHandler errorHandler}) = ChangePasswordError;
}
