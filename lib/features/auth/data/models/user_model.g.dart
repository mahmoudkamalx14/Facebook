// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      uId: json['uId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      mobileNumber: json['mobileNumber'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      image: json['image'] as String?,
      coverImage: json['coverImage'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'uId': instance.uId,
      'mobileNumber': instance.mobileNumber,
      'email': instance.email,
      'password': instance.password,
      'image': instance.image,
      'coverImage': instance.coverImage,
    };
