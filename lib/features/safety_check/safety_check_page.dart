part of 'safety_check.dart';

class SafetyCheckPage extends HookWidget {
  const SafetyCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.safetyCheck;

    return FScaffold(
      header: FHeader(title: Text(i18n.header.title)),
      child: const SafetyCheckBody(),
    );
  }
}
