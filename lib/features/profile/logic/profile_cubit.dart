import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/profile/data/model/change_password/change_password.dart';
import 'package:snap_shop/features/profile/data/model/change_password/change_password_request_model.dart';
import 'package:snap_shop/features/profile/data/model/profile_model/profile_model.dart';
import 'package:snap_shop/features/profile/data/model/update_profile_request_model.dart';
import 'package:snap_shop/features/profile/data/repo/profile_repo.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  static ProfileCubit get(context) => BlocProvider.of(context);
  ProfileModel? profileModelList;
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  void getUserData() async {
    if (isClosed) return;
    emit(const ProfileState.profileLoading());

    final response = await _profileRepo.getProfile();
    response.when(success: (profileModel) {
      if (isClosed) return;

      profileModelList = profileModel;
      emit(ProfileState.profileSuccess(profileModel: profileModel));
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(ProfileState.profileError(errorHandler: errorHandler));
    });
  }

  void changePassword(String oldPassword, String newPassword) async {
    if (isClosed) return;
    emit(const ProfileState.changePasswordLoading());
    final response = await _profileRepo.changePassword(
      ChangePasswordRequestModel(
          currentPassword: oldPassword, newPassword: newPassword),
    );
    response.when(success: (changePasswordResponseModel) {
      if (isClosed) return;
      emit(ProfileState.changePasswordSuccess(
          changePasswordResponseModel: changePasswordResponseModel));
      // SharedPrefHelper.setData(SharedPrefKeys.userPassword, newPassword);
      // SharedPrefHelper.getString(SharedPrefKeys.userPassword);
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(ProfileState.changePasswordError(errorHandler: errorHandler));
    });
  }

  void updateProfile(
    String name,
    String phone,
    String email,
  ) async {
    if (isClosed) return;
    emit(const ProfileState.updateProfileLoading());
    final response = await _profileRepo.updateProfile(
      UpdateProfileRequestModel(
        name: name,
        phone: phone,
        email: email,
      ),
    );
    response.when(success: (loginResponseBody) {
      if (isClosed) return;

      // تحديث البيانات في `profileModelList`
      profileModelList?.data?.name = name;
      profileModelList?.data?.phone = phone;
      profileModelList?.data?.email = email;

      emit(const ProfileState.updateProfileSuccess());
    }, failure: (errorHandler) {
      if (isClosed) return;
      emit(ProfileState.updateProfileError(errorHandler: errorHandler));
    });
  }
}
