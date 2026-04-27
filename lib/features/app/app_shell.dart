part of 'app.dart';

class AppShell extends HookWidget {
  const AppShell({super.key});

  /// Use this for widget testing.
  @visibleForTesting
  const factory AppShell.test({
    required Widget home,
    Brightness? brightness,
    Locale? locale,
    Key? key,
  }) = _AppShellTest;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    final locale = context.locale;

    final appearance = useBlocSelector(
      cubit,
      (AppState state) => state.appearance,
    );
    useEffect(() {
      FlutterNativeSplash.remove();
      return null;
    }, []);

    final brightness = switch (appearance) {
      Appearance.system => null,
      Appearance.light => Brightness.light,
      Appearance.dark => Brightness.dark,
    };
    final routerDelegate = _useRouterDelegate();

    return SaykoApp(
      routerDelegate: routerDelegate,
      routeInformationParser: routeInformationParser,
      brightness: brightness,
      locale: locale,
      supportedLocales: supportedLocales,
    );
  }
}

class _AppShellTest extends AppShell {
  const _AppShellTest({
    required this.home,
    this.brightness,
    this.locale,
    super.key,
  });

  final Widget home;
  final Brightness? brightness;
  final Locale? locale;

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(
      child: SaykoApp.test(
        brightness: brightness,
        locale: locale,
        supportedLocales: supportedLocales,
        home: home,
      ),
    );
  }
}
