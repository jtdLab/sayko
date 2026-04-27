// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_password.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// SignUpPasswordPresentationEvent
// ########################################################

mixin _$SignUpPasswordPresentationEvent {}

class SignUpPasswordPresentationEventSignUpFailed
    with _$SignUpPasswordPresentationEvent
    implements SignUpPasswordPresentationEvent {
  SignUpPasswordPresentationEventSignUpFailed();

  @override
  String toString() => 'SignUpPasswordPresentationEvent.signUpFailed()';
}

// ########################################################
// SignUpPasswordState
// ########################################################

mixin _$SignUpPasswordState {
  SignUpPasswordStatus get status;

  String get email;

  String get password;

  _SignUpPasswordStateCopyWith get copyWith =>
      _SignUpPasswordStateCopyWith(this);
}

class _SignUpPasswordStateCopyWith {
  _SignUpPasswordStateCopyWith(this._v);

  final _$SignUpPasswordState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  SignUpPasswordState call({
    Object? status = _unset,
    Object? email = _unset,
    Object? password = _unset,
  }) {
    return SignUpPasswordState(
      status: _pick<SignUpPasswordStatus>(status, _v.status),
      email: _pick<String>(email, _v.email),
      password: _pick<String>(password, _v.password),
    );
  }
}

class _SignUpPasswordState
    with _$SignUpPasswordState
    implements SignUpPasswordState {
  const _SignUpPasswordState({
    required this.status,
    required this.email,
    required this.password,
  });

  @override
  final SignUpPasswordStatus status;

  @override
  final String email;

  @override
  final String password;

  @override
  String toString() =>
      'SignUpPasswordState(status: $status, email: $email, password: $password)';
}
