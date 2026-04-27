part of '../not_found.dart';

class NotFoundGoHomeButton extends HookWidget {
  const NotFoundGoHomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.notFound.goHomeButton;

    return FButton(
      onPress: () => context.replaceHome(),
      prefix: const Icon(FIcons.messageSquare),
      child: Text(i18n.title),
    );
  }
}
