import 'package:sayko/domain/app_data/app_data.dart';
import 'package:sayko/i18n/i18n.dart';
import 'package:sayko/ui/ui.dart';

extension DomainAppDataAppearanceX on Appearance {
  String description(BuildContext context) => switch (this) {
    Appearance.light =>
      context.i18n.utils.domain.appData.appearance.light.description,
    Appearance.dark =>
      context.i18n.utils.domain.appData.appearance.dark.description,
    Appearance.system =>
      context.i18n.utils.domain.appData.appearance.system.description,
  };

  String i18n(BuildContext context) => switch (this) {
    Appearance.system =>
      context.i18n.utils.domain.appData.appearance.system.name,
    Appearance.light => context.i18n.utils.domain.appData.appearance.light.name,
    Appearance.dark => context.i18n.utils.domain.appData.appearance.dark.name,
  };

  IconData get icon => switch (this) {
    Appearance.light => FIcons.sun,
    Appearance.dark => FIcons.moon,
    Appearance.system => FIcons.monitor,
  };
}
