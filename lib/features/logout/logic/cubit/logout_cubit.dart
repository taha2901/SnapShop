import 'package:bloc/bloc.dart';
import 'package:snap_shop/features/logout/data/model/logout_response_body/logout_response_body.dart';
import 'package:snap_shop/features/logout/data/repo/logour_repo.dart';
part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutRepo _logoutRepo;

  LogoutCubit(this._logoutRepo) : super(LogoutInitial());

  Future<void> logout(String fcmToken) async {
    emit(LogoutLoading());
    try {
      final response = await _logoutRepo.logout(fcmToken);
      emit(LogoutSuccess(response));
    } catch (error) {
      emit(LogoutFailure(error.toString()));
    }
  }
}
