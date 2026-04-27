// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome.dart';

// ###### Helpers ####

const Object _unset = Object();

// ########################################################
// WelcomeState
// ########################################################

mixin _$WelcomeState {
  int get slideIndex;

  _WelcomeStateCopyWith get copyWith => _WelcomeStateCopyWith(this);
}

class _WelcomeStateCopyWith {
  _WelcomeStateCopyWith(this._v);

  final _$WelcomeState _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  WelcomeState call({Object? slideIndex = _unset}) {
    return WelcomeState(slideIndex: _pick<int>(slideIndex, _v.slideIndex));
  }
}

class _WelcomeState with _$WelcomeState implements WelcomeState {
  const _WelcomeState({required this.slideIndex});

  @override
  final int slideIndex;

  @override
  String toString() => 'WelcomeState(slideIndex: $slideIndex)';
}
