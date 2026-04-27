part of '../app_data.dart';

@lockd
abstract class AppData with _$AppData {
  const factory AppData({required Appearance appearance}) = _AppData;

  factory AppData.fromJson(Map<String, dynamic> json) =>
      _AppData.fromJson(json);
}

enum Appearance { dark, light, system }
