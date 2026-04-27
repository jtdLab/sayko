import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:marionette_flutter/marionette_flutter.dart';
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
import 'package:sayko/sayko_launch_config.dart';
import 'package:sayko/sound.dart';
import 'package:sayko/stage.dart';
import 'package:sayko/ui/ui.dart' hide Store;

Future<void> main() async {
  await setupApp();
  launchApp();
}

Future<void> setupApp() async {
  final widgetsBinding = kDebugMode
      ? MarionetteBinding.ensureInitialized()
      : WidgetsFlutterBinding.ensureInitialized();
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
  SaykoLaunchConfig.devicePreviewEnabled = kDebugMode;

  final app = MultiProvider(
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
  );

  runApp(
    SaykoLaunchConfig.devicePreviewEnabled
        ? DevicePreview(
            backgroundColor: _previewCanvasColor,
            defaultDevice: Devices.ios.iPhone15Pro,
            devices: _previewDevices,
            builder: (_) => app,
          )
        : app,
  );
}

/// Sayko dark [FColors.background] — canvas behind the device frame.
const _previewCanvasColor = Color(0xFF1F1812);

final _previewDevices = <DeviceInfo>[
  Devices.ios.iPhoneSE,
  Devices.ios.iPhone13,
  Devices.ios.iPhone15Pro,
  Devices.ios.iPhone16ProMax,
  Devices.android.googlePixel9,
  Devices.android.samsungGalaxyS20,
  Devices.android.samsungGalaxyS25,
  Devices.android.onePlus8Pro,
];
