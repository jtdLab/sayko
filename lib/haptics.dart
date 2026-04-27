import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

class Haptics {
  @visibleForTesting
  const Haptics();

  @visibleForTesting
  static Haptics? overrides;

  // ignore: prefer_constructors_over_static_methods
  static Haptics get instance => overrides ?? const Haptics();

  void lightImpact() => HapticFeedback.lightImpact();

  void mediumImpact() => HapticFeedback.mediumImpact();

  void heavyImpact() => HapticFeedback.heavyImpact();

  void vibrate() => HapticFeedback.vibrate();

  void selectionClick() => HapticFeedback.selectionClick();
}
