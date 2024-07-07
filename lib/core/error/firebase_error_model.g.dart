// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirebaseErrorModel _$FirebaseErrorModelFromJson(Map<String, dynamic> json) =>
    FirebaseErrorModel(
      code: json['code'] as String?,
      message: json['message'] as String,
    );

Map<String, dynamic> _$FirebaseErrorModelToJson(FirebaseErrorModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
