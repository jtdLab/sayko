import 'package:meta/meta.dart';
import 'package:sayko/env.dart';

enum Stage {
  development,
  staging,
  production;

  const Stage();

  // Use this to override the current stage for testing purposes.
  @visibleForTesting
  static Stage? currentOverrides;

  static Stage get current =>
      currentOverrides ??
      switch (Env.flavor) {
        'development' => Stage.development,
        'staging' => Stage.staging,
        'production' => Stage.production,
        final String value => throw Exception('Unknown stage: $value'),
      };
}
