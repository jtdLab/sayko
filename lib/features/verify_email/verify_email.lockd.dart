// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_email.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// VerifyEmailPresentationEvent
// ########################################################

mixin _$VerifyEmailPresentationEvent {}

class VerifyEmailPresentationEventEmailVerified
    with _$VerifyEmailPresentationEvent
    implements VerifyEmailPresentationEvent {
  VerifyEmailPresentationEventEmailVerified();

  @override
  String toString() => 'VerifyEmailPresentationEvent.emailVerified()';
}

class VerifyEmailPresentationEventSendVerifyEmailFailed
    with _$VerifyEmailPresentationEvent
    implements VerifyEmailPresentationEvent {
  VerifyEmailPresentationEventSendVerifyEmailFailed();

  @override
  String toString() => 'VerifyEmailPresentationEvent.sendVerifyEmailFailed()';
}

// ########################################################
// VerifyEmailState
// ########################################################

mixin _$VerifyEmailState {
  VerifyEmailStatus get status;

  _VerifyEmailStateCopyWith get copyWith => _VerifyEmailStateCopyWith(this);
}

class _VerifyEmailStateCopyWith {
  _VerifyEmailStateCopyWith(this._v);

  final _$VerifyEmailState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  VerifyEmailState call({Object? status = _unset}) {
    return VerifyEmailState(
      status: _pick<VerifyEmailStatus>(status, _v.status),
    );
  }
}

class _VerifyEmailState with _$VerifyEmailState implements VerifyEmailState {
  const _VerifyEmailState({required this.status});

  @override
  final VerifyEmailStatus status;

  @override
  String toString() => 'VerifyEmailState(status: $status)';
}
