import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_shop/features/register/data/repo/register_repo.dart';
import 'package:snap_shop/features/register/logic/register_state.dart';

import '../data/models/register_request_body.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.signup(
      RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (signupResponse) {
      emit(RegisterState.registerSuccess(signupResponse));
    }, failure: (error) {
      emit(RegisterState.registerError(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}
