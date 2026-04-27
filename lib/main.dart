import 'dart:async';

import 'package:sayko/app_info.dart';
import 'package:sayko/core/bloc/bloc.dart';
import 'package:sayko/core/flutter_native_splash.dart';
import 'package:sayko/core/provider.dart';
import 'package:sayko/core/sembast.dart';
import 'package:sayko/di.dart';
import 'package:sayko/features/app/app.dart';
import 'package:sayko/haptics.dart';
import 'package:sayko/i18n/i18n.dart';
import 'package:sayko/logging.dart';
import 'package:sayko/platform.dart';
import 'package:sayko/sound.dart';
import 'package:sayko/stage.dart';
import 'package:sayko/ui/ui.dart' hide Store;

Future<void> main() async {
  await setupApp();
  launchApp();
}

Future<void> setupApp() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await useDeviceLocale();

  await AppInfo.instance.init();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Di.init();

  Logging.init();
}

void launchApp() {
  runApp(
    MultiProvider(
      providers: [
        Provider.value(value: AppInfo.instance),
        Provider.value(value: Haptics.instance),
        Provider.value(value: Platform.current),
        Provider.value(value: Sound.instance),
        Provider.value(value: Stage.current),
        Provider.value(value: Di.appDataRepository),
        Provider.value(value: Di.authRepository),
        Provider.value(value: Di.userDataRepository),
      ],
      child: TranslationProvider(
        child: BlocProvider(
          create: (context) => AppCubit(
            appDataRepository: context.read(),
            authRepository: context.read(),
            userDataRepository: context.read(),
            onUnauthenticated: () async {
              // Clear local storage on logout
              await Store.clear();
            },
          ),
          child: const AppShell(),
        ),
      ),
    ),
  );
}
