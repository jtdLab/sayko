part of '../ui.dart';

extension UiWidgetsAppBuildContextX on BuildContext {
  SaykoBreakpoint get breakpoint {
    final width = deviceWidth;
    final theme = FTheme.of(this);
    return switch (width) {
      _ when width < theme.breakpoints.sm => SaykoBreakpoint.mobile,
      _ when width < theme.breakpoints.lg => SaykoBreakpoint.tablet,
      _ => SaykoBreakpoint.desktop,
    };
  }
}

extension UiWidgetsAppFThemeDataX on FThemeData {
  FSpacings get spacings => extension<FSpacings>();
}

enum SaykoBreakpoint { mobile, tablet, desktop }

const _saykoColorsLight = FColors(
  brightness: Brightness.light,
  systemOverlayStyle: SystemUiOverlayStyle.dark,
  barrier: Color(0x33000000),
  background: Color(0xFFFBF8F1),
  foreground: Color(0xFF2C231C),
  primary: Color(0xFFB36A3F),
  primaryForeground: Color(0xFFFFFFFF),
  secondary: Color(0xFFF4EFE5),
  secondaryForeground: Color(0xFF2C231C),
  muted: Color(0xFFF4EFE5),
  mutedForeground: Color(0xFF6F5F50),
  destructive: Color(0xFFB54F30),
  destructiveForeground: Color(0xFFFAFAFA),
  error: Color(0xFFB54F30),
  errorForeground: Color(0xFFFAFAFA),
  card: Color(0xFFFFFFFF),
  border: Color(0xFFE6DED1),
);

const _saykoColorsDark = FColors(
  brightness: Brightness.dark,
  systemOverlayStyle: SystemUiOverlayStyle.light,
  barrier: Color(0x7A000000),
  background: Color(0xFF1F1812),
  foreground: Color(0xFFF4EFE5),
  primary: Color(0xFFD88563),
  primaryForeground: Color(0xFF1F1812),
  secondary: Color(0xFF36281D),
  secondaryForeground: Color(0xFFF4EFE5),
  muted: Color(0xFF36281D),
  mutedForeground: Color(0xFFA89989),
  destructive: Color(0xFFDA624C),
  destructiveForeground: Color(0xFFFAFAFA),
  error: Color(0xFFDA624C),
  errorForeground: Color(0xFFFAFAFA),
  card: Color(0xFF2C231C),
  border: Color(0x1AFFFFFF),
);

abstract class SaykoApp extends StatelessWidget {
  const factory SaykoApp({
    required RouterDelegate<Object> routerDelegate,
    required RouteInformationParser<Object> routeInformationParser,
    required List<Locale> supportedLocales,
    required Locale locale,
    Brightness? brightness,
    String Function(BuildContext context)? onGenerateTitle,
    Widget Function(BuildContext context, Widget child)? builder,
    Key? key,
  }) = _SaykoApp;

  const factory SaykoApp.test({
    required Widget home,
    required List<Locale> supportedLocales,
    Locale? locale,
    Brightness? brightness,
    Key? key,
  }) = _SaykoAppTest;

  const SaykoApp._({
    required this.locale,
    required this.supportedLocales,
    this.brightness,
    super.key,
  });

  final Locale? locale;
  final List<Locale> supportedLocales;
  final Brightness? brightness;

  Iterable<LocalizationsDelegate<dynamic>> get _localizationsDelegates =>
      FLocalizations.localizationsDelegates;

  Color _color(BuildContext context) {
    final brightness = this.brightness ?? context.deviceBrightness;
    return switch (brightness) {
      Brightness.light => const Color(0xFFFFFFFF),
      Brightness.dark => const Color(0xFF000000),
    };
  }

  FThemeData _theme(BuildContext context) {
    final brightness = this.brightness ?? context.deviceBrightness;
    final breakpoint = context.breakpoint;

    final spacings = switch (breakpoint) {
      SaykoBreakpoint.mobile => const FSpacings(
        quarter: 2,
        half: 4,
        threeQuarters: 6,
        one: 8,
        oneAndHalf: 12,
        oneAndThreeQuarters: 14,
        two: 16,
        three: 24,
        four: 32,
        five: 40,
        six: 48,
        seven: 56,
        eight: 64,
        nine: 72,
        ten: 80,
        eleven: 88,
        twelve: 96,
        thirteen: 104,
        fourteen: 112,
      ),
      SaykoBreakpoint.tablet => const FSpacings(
        quarter: 2,
        half: 4,
        threeQuarters: 6,
        one: 8,
        oneAndHalf: 12,
        oneAndThreeQuarters: 14,
        two: 16,
        three: 24,
        four: 32,
        five: 40,
        six: 48,
        seven: 56,
        eight: 64,
        nine: 72,
        ten: 80,
        eleven: 88,
        twelve: 96,
        thirteen: 104,
        fourteen: 112,
      ),
      SaykoBreakpoint.desktop => const FSpacings(
        quarter: 2,
        half: 4,
        threeQuarters: 6,
        one: 8,
        oneAndHalf: 12,
        oneAndThreeQuarters: 14,
        two: 16,
        three: 24,
        four: 32,
        five: 40,
        six: 48,
        seven: 56,
        eight: 64,
        nine: 72,
        ten: 80,
        eleven: 88,
        twelve: 96,
        thirteen: 104,
        fourteen: 112,
      ),
    };

    final colors = switch (brightness) {
      Brightness.light => _saykoColorsLight,
      Brightness.dark => _saykoColorsDark,
    };
    final baseTheme = FThemeData(touch: true, colors: colors);
    return baseTheme.copyWith(extensions: [spacings]);
  }

  Widget _builder(FThemeData theme, Widget child) {
    return Theme(
      data: theme.toApproximateMaterialTheme(),
      child: FTheme(
        data: theme,
        child: FToaster(child: child),
      ),
    );
  }
}

class _SaykoApp extends SaykoApp {
  const _SaykoApp({
    required this.routerDelegate,
    required this.routeInformationParser,
    required Locale super.locale,
    required super.supportedLocales,
    super.brightness,
    this.onGenerateTitle,
    this.builder,
    super.key,
  }) : super._();

  final RouterDelegate<Object> routerDelegate;
  final RouteInformationParser<Object> routeInformationParser;
  final String Function(BuildContext context)? onGenerateTitle;
  final Widget Function(BuildContext context, Widget child)? builder;

  @override
  Widget build(BuildContext context) {
    final color = _color(context);
    final theme = _theme(context);

    return WidgetsApp.router(
      color: color,
      onGenerateTitle: onGenerateTitle,
      supportedLocales: supportedLocales,
      locale: locale,
      localizationsDelegates: _localizationsDelegates,
      routerDelegate: routerDelegate,
      routeInformationParser: routeInformationParser,
      builder: (_, child) =>
          _builder(theme, builder?.call(context, child!) ?? child!),
    );
  }
}

class _SaykoAppTest extends SaykoApp {
  const _SaykoAppTest({
    required this.home,
    required super.supportedLocales,
    super.locale,
    super.brightness,
    super.key,
  }) : super._();

  final Widget home;

  @override
  Widget build(BuildContext context) {
    final color = _color(context);
    final theme = _theme(context);

    return WidgetsApp(
      color: color,
      debugShowCheckedModeBanner: false,
      supportedLocales: supportedLocales,
      locale: locale,
      localizationsDelegates: _localizationsDelegates,
      builder: (_, child) => _builder(theme, child!),
      home: home,
    );
  }
}
