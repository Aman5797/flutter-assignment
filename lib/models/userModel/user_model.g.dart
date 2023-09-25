// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as String,
      profileImage: json['profileImage'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      contactNumber: json['contactNumber'] as String?,
      emailAddress: json['emailAddress'] as String?,
      cityState: json['cityState'] as String?,
      country: json['country'] as String?,
      type: $enumDecodeNullable(_$LoginTypeEnumMap, json['type']) ??
          LoginType.none,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profileImage': instance.profileImage,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'contactNumber': instance.contactNumber,
      'emailAddress': instance.emailAddress,
      'cityState': instance.cityState,
      'country': instance.country,
      'type': _$LoginTypeEnumMap[instance.type]!,
    };

const _$LoginTypeEnumMap = {
  LoginType.google: 'google',
  LoginType.facebook: 'facebook',
  LoginType.linkedin: 'linkedin',
  LoginType.none: 'none',
};
