// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_create.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// AccountCreatePresentationEvent
// ########################################################

mixin _$AccountCreatePresentationEvent {}

class AccountCreatePresentationEventCreateAccountFailed
    with _$AccountCreatePresentationEvent
    implements AccountCreatePresentationEvent {
  AccountCreatePresentationEventCreateAccountFailed();

  @override
  String toString() => 'AccountCreatePresentationEvent.createAccountFailed()';
}

// ########################################################
// AccountCreateState
// ########################################################

mixin _$AccountCreateState {
  AccountCreateStatus get status;

  bool get hasAcceptedTerms;

  String get name;

  _AccountCreateStateCopyWith get copyWith => _AccountCreateStateCopyWith(this);
}

class _AccountCreateStateCopyWith {
  _AccountCreateStateCopyWith(this._v);

  final _$AccountCreateState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  AccountCreateState call({
    Object? status = _unset,
    Object? hasAcceptedTerms = _unset,
    Object? name = _unset,
  }) {
    return AccountCreateState(
      status: _pick<AccountCreateStatus>(status, _v.status),
      hasAcceptedTerms: _pick<bool>(hasAcceptedTerms, _v.hasAcceptedTerms),
      name: _pick<String>(name, _v.name),
    );
  }
}

class _AccountCreateState
    with _$AccountCreateState
    implements AccountCreateState {
  const _AccountCreateState({
    required this.status,
    required this.hasAcceptedTerms,
    required this.name,
  });

  @override
  final AccountCreateStatus status;

  @override
  final bool hasAcceptedTerms;

  @override
  final String name;

  @override
  String toString() =>
      'AccountCreateState(status: $status, hasAcceptedTerms: $hasAcceptedTerms, name: $name)';
}
