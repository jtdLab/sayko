import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:sayko/logging.dart';
import 'package:sayko/stage.dart';

export 'package:logging/logging.dart';

abstract final class Logging {
  static void init() {
    logger.level = Level.ALL;
    logger.onRecord.listen((record) async {
      log('${record.level.name}: ${record.time}: ${record.message}');
      if (kDebugMode || Stage.current == Stage.development) {
        print('${record.level.name}: ${record.time}: ${record.message}');
      } else {
        return;
      }
    });
  }

  static Logger get logger => Logger.root;
}
