part of '../local_auth.dart';

@lockd
abstract class UserDto with _$UserDto {
  const factory UserDto({required String id, required bool isVerified}) =
      _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _UserDto.fromJson(json);
}
