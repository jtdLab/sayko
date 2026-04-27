part of '../user_data.dart';

@lockd
abstract class UserData with _$UserData {
  const factory UserData({required String displayName}) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _UserData.fromJson(json);
}
