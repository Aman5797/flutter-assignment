part of 'login_page_bloc.dart';

abstract class LoginPageEvent extends Equatable {
  const LoginPageEvent();

  @override
  List<Object> get props => [];
}

class LoginInitialEvent extends LoginPageEvent {
  const LoginInitialEvent();
}

class GoogleLogin extends LoginPageEvent {
  const GoogleLogin();
}

class FacebookLogin extends LoginPageEvent {
  const FacebookLogin();
}

class LinkedinLogin extends LoginPageEvent {
  const LinkedinLogin();
}
