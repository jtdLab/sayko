part of '../auth.dart';

@lockd
abstract class User with _$User {
  const factory User({required String id, required bool isVerified}) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _User.fromJson(json);
}
