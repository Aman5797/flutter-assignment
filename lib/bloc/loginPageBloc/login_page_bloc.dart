import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/models/userModel/user_model.dart';
import 'package:flutter_assignment/services/auth_service.dart';
import 'package:flutter_assignment/ui/dialogs/app_snackbar.dart';
import 'package:flutter_assignment/utils/app_preferences.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_page_event.dart';

part 'login_page_state.dart';

class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  LoginPageBloc() : super(const LoginPageState()) {
    on<GoogleLogin>(_googleLogin);
    on<FacebookLogin>(_facebookLogin);
    on<LinkedinLogin>(_linkedinLogin);
  }

  Future<void> _googleLogin(
      GoogleLogin event, Emitter<LoginPageState> emit) async {
    emit(const LoginPageState().copyWith(
      isLoading: true,
      event: event,
    ));
    final result = await AuthService().loginGoogle();
    if (result.data != null) {
      await AppPreferences().saveUserData(result.data!);
      emit(state.copyWith(
        isLoading: false,
        userDetail: result.data!,
        responseStatus: ApiState.success,
        event: event,
      ));
      return;
    }
    emit(state.copyWith(
      isLoading: false,
      responseMessage: S.current.somethingWentWrong,
      responseStatus: ApiState.failed,
      event: event,
    ));
  }

  Future<void> _facebookLogin(
      FacebookLogin event, Emitter<LoginPageState> emit) async {
    emit(const LoginPageState().copyWith(
      isLoading: true,
      event: event,
    ));
    final result = await AuthService().loginFacebook();
    if (result.data != null) {
      await AppPreferences().saveUserData(result.data!);
      emit(state.copyWith(
        isLoading: false,
        userDetail: result.data!,
        responseStatus: ApiState.success,
        event: event,
      ));
      return;
    }
    emit(state.copyWith(
      isLoading: false,
      responseMessage: S.current.somethingWentWrong,
      responseStatus: ApiState.failed,
      event: event,
    ));
  }

  Future<void> _linkedinLogin(
      LinkedinLogin event, Emitter<LoginPageState> emit) async {
    AppSnackbar().rawSnackbar('Under development...');
  }
}
