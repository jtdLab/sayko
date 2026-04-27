import 'dart:io' as io;

import 'package:flutter/foundation.dart';

enum Platform {
  android,
  ios,
  linux,
  macos,
  web,
  windows;

  const Platform();

  // Use this to override the current platform for testing purposes.
  @visibleForTesting
  static Platform? currentOverrides;

  static Platform get current {
    switch (currentOverrides) {
      case final Platform overrides:
        return overrides;
      case null:
        if (kIsWeb) {
          return Platform.web;
        } else if (io.Platform.isAndroid) {
          return Platform.android;
        } else if (io.Platform.isIOS) {
          return Platform.ios;
        } else if (io.Platform.isLinux) {
          return Platform.linux;
        } else if (io.Platform.isMacOS) {
          return Platform.macos;
        } else if (io.Platform.isWindows) {
          return Platform.windows;
        }

        throw UnsupportedError(
          'Unsupported platform: ${io.Platform.operatingSystem}',
        );
    }
  }
}
