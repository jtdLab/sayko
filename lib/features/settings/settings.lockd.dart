// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// SettingsState
// ########################################################

mixin _$SettingsState {
  Appearance get appearance;

  _SettingsStateCopyWith get copyWith => _SettingsStateCopyWith(this);
}

class _SettingsStateCopyWith {
  _SettingsStateCopyWith(this._v);

  final _$SettingsState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  SettingsState call({Object? appearance = _unset}) {
    return SettingsState(
      appearance: _pick<Appearance>(appearance, _v.appearance),
    );
  }
}

class _SettingsState with _$SettingsState implements SettingsState {
  const _SettingsState({required this.appearance});

  @override
  final Appearance appearance;

  @override
  String toString() => 'SettingsState(appearance: $appearance)';
}
