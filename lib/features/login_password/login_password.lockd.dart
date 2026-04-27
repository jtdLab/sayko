// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_password.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// LoginPasswordPresentationEvent
// ########################################################

mixin _$LoginPasswordPresentationEvent {}

class LoginPasswordPresentationEventSignInFailed
    with _$LoginPasswordPresentationEvent
    implements LoginPasswordPresentationEvent {
  LoginPasswordPresentationEventSignInFailed();

  @override
  String toString() => 'LoginPasswordPresentationEvent.signInFailed()';
}

// ########################################################
// LoginPasswordState
// ########################################################

mixin _$LoginPasswordState {
  LoginPasswordStatus get status;

  String get email;

  String get password;

  _LoginPasswordStateCopyWith get copyWith => _LoginPasswordStateCopyWith(this);
}

class _LoginPasswordStateCopyWith {
  _LoginPasswordStateCopyWith(this._v);

  final _$LoginPasswordState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  LoginPasswordState call({
    Object? status = _unset,
    Object? email = _unset,
    Object? password = _unset,
  }) {
    return LoginPasswordState(
      status: _pick<LoginPasswordStatus>(status, _v.status),
      email: _pick<String>(email, _v.email),
      password: _pick<String>(password, _v.password),
    );
  }
}

class _LoginPasswordState
    with _$LoginPasswordState
    implements LoginPasswordState {
  const _LoginPasswordState({
    required this.status,
    required this.email,
    required this.password,
  });

  @override
  final LoginPasswordStatus status;

  @override
  final String email;

  @override
  final String password;

  @override
  String toString() =>
      'LoginPasswordState(status: $status, email: $email, password: $password)';
}
