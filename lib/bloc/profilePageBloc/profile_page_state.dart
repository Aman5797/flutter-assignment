part of 'profile_page_bloc.dart';

class ProfilePageState extends Equatable {
  const ProfilePageState({
    this.responseStatus = ApiState.none,
    this.isLoading = false,
    this.responseMessage,
    this.userDetail,
    this.event = const ProfilePageInitialEvent(),
  });
  final bool isLoading;
  final ApiState responseStatus;
  final String? responseMessage;
  final UserModel? userDetail;
  final ProfilePageEvent event;

  ProfilePageState copyWith({
    bool? isLoading,
    ApiState? responseStatus,
    String? responseMessage,
    UserModel? userDetail,
    ProfilePageEvent? event,
  }) =>
      ProfilePageState(
        isLoading: isLoading ?? this.isLoading,
        responseStatus: responseStatus ?? ApiState.none,
        responseMessage: responseMessage,
        userDetail: userDetail ?? this.userDetail,
        event: event ?? this.event,
      );

  @override
  List<Object?> get props => [
        isLoading,
        responseStatus,
        responseMessage,
        userDetail,
        event,
      ];
}
