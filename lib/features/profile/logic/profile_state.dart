part of 'profile_cubit.dart';

@freezed
class ProfileState with _$SettingsState {
  const factory ProfileState.initial() = _Initial;

  const factory ProfileState.profileLoading() = ProfileLoading;

  const factory ProfileState.profileSuccess({required ProfileModel? profileModel}) = ProfileSuccess;

  const factory ProfileState.profileError({required ErrorHandler errorHandler}) = ProfileError;
}
