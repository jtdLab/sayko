import 'package:flutter/foundation.dart';
import 'package:sayko/logging.dart';
import 'package:sayko/stage.dart';

export 'package:logging/logging.dart';

abstract final class Logging {
  static void init() {
    logger.level = Level.ALL;
    logger.onRecord.listen((record) async {
      if (kDebugMode || Stage.current == Stage.development) {
        print('${record.level.name}: ${record.time}: ${record.message}');
      } else {
        return;
      }
    });
  }

  static Logger get logger => Logger.root;
}
