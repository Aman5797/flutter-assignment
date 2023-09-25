part of 'login_page_bloc.dart';

class LoginPageState extends Equatable {
  const LoginPageState({
    this.responseStatus = ApiState.none,
    this.isLoading = false,
    this.responseMessage,
    this.event = const LoginInitialEvent(),
  });
  final bool isLoading;
  final ApiState responseStatus;
  final String? responseMessage;
  final LoginPageEvent event;

  LoginPageState copyWith({
    bool? isLoading,
    ApiState? responseStatus,
    String? responseMessage,
    UserModel? userDetail,
    LoginPageEvent? event,
  }) =>
      LoginPageState(
        isLoading: isLoading ?? this.isLoading,
        responseStatus: responseStatus ?? ApiState.none,
        responseMessage: responseMessage,
        event: event ?? this.event,
      );

  @override
  List<Object?> get props => [
        isLoading,
        responseStatus,
        responseMessage,
        event,
      ];
}
