import 'package:sayko/platform.dart';

abstract final class Env {
  /// The flavor of the app.
  ///
  /// Mobile & Desktop: This is automatically set via `--flavor ...`
  ///
  /// Web: This is set via `--dart-define FLAVOR=...`
  static String get flavor => switch (Platform.current) {
    Platform.web => const String.fromEnvironment('FLAVOR'),
    _ => const String.fromEnvironment('FLUTTER_APP_FLAVOR'),
  };
}
