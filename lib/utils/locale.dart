import 'package:sayko/i18n/i18n.dart';
import 'package:sayko/ui/ui.dart';

extension LocaleX on Locale {
  String i18n(BuildContext context) => switch (languageCode) {
    'en' => context.i18n.utils.locale.en.name,
    'de' => context.i18n.utils.locale.de.name,
    _ => throw Exception('Unsupported locale: $languageCode'),
  };

  String i18nNative(BuildContext context) => switch (languageCode) {
    'en' => 'English',
    'de' => 'Deutsch',
    _ => throw Exception('Unsupported locale: $languageCode'),
  };
}
