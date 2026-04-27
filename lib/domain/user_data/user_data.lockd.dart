// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// UserData
// ########################################################

mixin _$UserData {
  String get displayName;

  _UserDataCopyWith get copyWith => _UserDataCopyWith(this);

  Map<String, dynamic> toJson();
}

class _UserDataCopyWith {
  _UserDataCopyWith(this._v);

  final _$UserData _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  UserData call({Object? displayName = _unset}) {
    return UserData(displayName: _pick<String>(displayName, _v.displayName));
  }
}

class _UserData with _$UserData implements UserData {
  const _UserData({required this.displayName});

  factory _UserData.fromJson(Map<String, dynamic> json) {
    return _UserData(displayName: json['displayName'] as String);
  }

  @override
  final String displayName;

  Map<String, dynamic> toJson() {
    return {'displayName': displayName};
  }

  @override
  String toString() => 'UserData(displayName: $displayName)';
}
