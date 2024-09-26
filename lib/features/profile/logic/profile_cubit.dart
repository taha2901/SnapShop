import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snap_shop/core/networking/api_error_handler.dart';
import 'package:snap_shop/features/profile/data/model/profile_model/profile_model.dart';
import 'package:snap_shop/features/profile/data/repo/profile_repo.dart';

part 'profile_state.dart';
part 'settings_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepo _profileRepo;
  ProfileCubit(this._profileRepo) : super(const ProfileState.initial());

  void getUserData() async {
    emit(const ProfileState.profileLoading());
    final response = await _profileRepo.getProfile();
    response.when(success: (profileModel) {
      emit(ProfileState.profileSuccess(profileModel: profileModel));
    }, failure: (errorHandler) {
      emit(ProfileState.profileError(errorHandler: errorHandler));
    });
  }
}
