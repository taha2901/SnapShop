part of 'logout_cubit.dart';

abstract class LogoutState {}

class LogoutInitial extends LogoutState {}

class LogoutLoading extends LogoutState {}

class LogoutSuccess extends LogoutState {
  final LogoutResponseBody response;

  LogoutSuccess(this.response);
}

class LogoutFailure extends LogoutState {
  final String message;

  LogoutFailure(this.message);
}
