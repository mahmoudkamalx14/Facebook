import 'package:json_annotation/json_annotation.dart';

part 'firebase_error_model.g.dart';

@JsonSerializable()
class FirebaseErrorModel {
  String? code;
  String message;
  FirebaseErrorModel({
    this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  Map<String, dynamic> toJson() => _$FirebaseErrorModelToJson(this);

  factory FirebaseErrorModel.fromJson(Map<String, dynamic> map) =>
      _$FirebaseErrorModelFromJson(map);
}
