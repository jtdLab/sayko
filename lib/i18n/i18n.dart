import 'package:sayko/i18n/strings.g.dart';
import 'package:sayko/ui/ui.dart';

export 'package:sayko/i18n/strings.g.dart'
    show AppLocale, AppLocaleUtils, LocaleSettings, TranslationProvider;

extension I18nBuildContextX on BuildContext {
  Translations get i18n => TranslationProvider.of(this).translations;

  Locale get locale => TranslationProvider.of(this).flutterLocale;
}

Locale get fallbackLocale => AppLocaleUtils.instance.baseLocale.flutterLocale;

List<Locale> get supportedLocales => AppLocaleUtils.supportedLocales;

Future<void> useDeviceLocale() => LocaleSettings.useDeviceLocale();

Future<void> setLocale(String locale) => LocaleSettings.setLocaleRaw(locale);
