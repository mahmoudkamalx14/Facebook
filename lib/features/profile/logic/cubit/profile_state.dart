import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.g.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
}
