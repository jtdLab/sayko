// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_reset.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// PasswordResetPresentationEvent
// ########################################################

mixin _$PasswordResetPresentationEvent {}

class PasswordResetPresentationEventSendPasswordResetEmailFailed
    with _$PasswordResetPresentationEvent
    implements PasswordResetPresentationEvent {
  PasswordResetPresentationEventSendPasswordResetEmailFailed();

  @override
  String toString() =>
      'PasswordResetPresentationEvent.sendPasswordResetEmailFailed()';
}

class PasswordResetPresentationEventSendPasswordResetEmailSucceeded
    with _$PasswordResetPresentationEvent
    implements PasswordResetPresentationEvent {
  PasswordResetPresentationEventSendPasswordResetEmailSucceeded();

  @override
  String toString() =>
      'PasswordResetPresentationEvent.sendPasswordResetEmailSucceeded()';
}

// ########################################################
// PasswordResetState
// ########################################################

mixin _$PasswordResetState {
  PasswordResetStatus get status;

  String get email;

  _PasswordResetStateCopyWith get copyWith => _PasswordResetStateCopyWith(this);
}

class _PasswordResetStateCopyWith {
  _PasswordResetStateCopyWith(this._v);

  final _$PasswordResetState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  PasswordResetState call({Object? status = _unset, Object? email = _unset}) {
    return PasswordResetState(
      status: _pick<PasswordResetStatus>(status, _v.status),
      email: _pick<String>(email, _v.email),
    );
  }
}

class _PasswordResetState
    with _$PasswordResetState
    implements PasswordResetState {
  const _PasswordResetState({required this.status, required this.email});

  @override
  final PasswordResetStatus status;

  @override
  final String email;

  @override
  String toString() => 'PasswordResetState(status: $status, email: $email)';
}
