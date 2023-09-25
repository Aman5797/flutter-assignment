import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_assignment/generated/l10n.dart';
import 'package:flutter_assignment/models/apiResult/api_result.dart';
import 'package:flutter_assignment/models/userModel/user_model.dart';
import 'package:flutter_assignment/services/auth_service.dart';
import 'package:flutter_assignment/utils/app_preferences.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'profile_page_event.dart';

part 'profile_page_state.dart';

class ProfilePageBloc extends Bloc<ProfilePageEvent, ProfilePageState> {
  ProfilePageBloc() : super(const ProfilePageState()) {
    on<GetUserDetails>(_getUserDetail);
    on<LogoutUser>(_logoutuser);
  }

  Future<void> _getUserDetail(
      GetUserDetails event, Emitter<ProfilePageState> emit) async {
    emit(const ProfilePageState().copyWith(
      isLoading: true,
      event: event,
    ));

    final result = await AuthService()
        .getCurrentUser(); //  AppPreferences().getUserData();
    if (result.data != null) {
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

  Future<void> _logoutuser(
      LogoutUser event, Emitter<ProfilePageState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      event: event,
    ));

    final userData = AppPreferences().getUserData();
    final result = await AuthService().logout(userData?.type);

    if (result) {
      emit(state.copyWith(
        isLoading: false,
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
}
