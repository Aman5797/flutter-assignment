part of 'profile_page_bloc.dart';

abstract class ProfilePageEvent extends Equatable {
  const ProfilePageEvent();

  @override
  List<Object> get props => [];
}

class ProfilePageInitialEvent extends ProfilePageEvent {
  const ProfilePageInitialEvent();
}

class GetUserDetails extends ProfilePageEvent {
  const GetUserDetails();
}

class LogoutUser extends ProfilePageEvent {
  const LogoutUser();
}
