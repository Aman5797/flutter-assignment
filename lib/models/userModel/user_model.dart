import 'package:flutter_assignment/services/apiService/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();

  factory UserModel({
    required String id,
    String? profileImage,
    String? firstName,
    String? lastName,
    String? contactNumber,
    String? emailAddress,
    String? cityState,
    String? country,
    @Default(LoginType.none) LoginType type,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);

  String get fullName => firstName != null
      ? "${firstName ?? ''} ${lastName ?? ''}"
      : lastName ?? '';
}
