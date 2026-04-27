// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// User
// ########################################################

mixin _$User {
  String get id;

  bool get isVerified;

  _UserCopyWith get copyWith => _UserCopyWith(this);

  Map<String, dynamic> toJson();
}

class _UserCopyWith {
  _UserCopyWith(this._v);

  final _$User _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  User call({Object? id = _unset, Object? isVerified = _unset}) {
    return User(
      id: _pick<String>(id, _v.id),
      isVerified: _pick<bool>(isVerified, _v.isVerified),
    );
  }
}

class _User with _$User implements User {
  const _User({required this.id, required this.isVerified});

  factory _User.fromJson(Map<String, dynamic> json) {
    return _User(
      id: json['id'] as String,
      isVerified: json['isVerified'] as bool,
    );
  }

  @override
  final String id;

  @override
  final bool isVerified;

  Map<String, dynamic> toJson() {
    return {'id': id, 'isVerified': isVerified};
  }

  @override
  String toString() => 'User(id: $id, isVerified: $isVerified)';
}
