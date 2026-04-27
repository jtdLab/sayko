// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_data.dart';

// ###### Helpers ####

const Object _unset = Object();

const Map<Appearance, String> _appearanceJsonMap = {
  Appearance.dark: 'dark',
  Appearance.light: 'light',
  Appearance.system: 'system',
};

Appearance _decodeAppearanceJsonMap(String v) =>
    _appearanceJsonMap.entries.singleWhere((e) => e.value == v).key;

// ########################################################
// AppData
// ########################################################

mixin _$AppData {
  Appearance get appearance;

  _AppDataCopyWith get copyWith => _AppDataCopyWith(this);

  Map<String, dynamic> toJson();
}

class _AppDataCopyWith {
  _AppDataCopyWith(this._v);

  final _$AppData _v;

  T _pick<T>(Object? value, T current) {
    return identical(value, _unset) ? current : value as T;
  }

  AppData call({Object? appearance = _unset}) {
    return AppData(appearance: _pick<Appearance>(appearance, _v.appearance));
  }
}

class _AppData with _$AppData implements AppData {
  const _AppData({required this.appearance});

  factory _AppData.fromJson(Map<String, dynamic> json) {
    return _AppData(
      appearance: _decodeAppearanceJsonMap(json['appearance'] as String),
    );
  }

  @override
  final Appearance appearance;

  Map<String, dynamic> toJson() {
    return {'appearance': _appearanceJsonMap[appearance]!};
  }

  @override
  String toString() => 'AppData(appearance: $appearance)';
}
