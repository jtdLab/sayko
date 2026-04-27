// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// AppState
// ########################################################

mixin _$AppState {
  AppStatus get status;

  Appearance get appearance;

  _AppStateCopyWith get copyWith => _AppStateCopyWith(this);
}

class _AppStateCopyWith {
  _AppStateCopyWith(this._v);

  final _$AppState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  AppState call({Object? status = _unset, Object? appearance = _unset}) {
    return AppState(
      status: _pick<AppStatus>(status, _v.status),
      appearance: _pick<Appearance>(appearance, _v.appearance),
    );
  }
}

class _AppState with _$AppState implements AppState {
  const _AppState({required this.status, required this.appearance});

  @override
  final AppStatus status;

  @override
  final Appearance appearance;

  @override
  String toString() => 'AppState(status: $status, appearance: $appearance)';
}
