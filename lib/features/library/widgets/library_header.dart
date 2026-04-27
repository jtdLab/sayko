part of '../library.dart';

class LibraryHeader extends HookWidget {
  const LibraryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n.features.library.header;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SaykoEyebrow(i18n.eyebrow),
        const SaykoGap.one(),
        SaykoSerifText(i18n.title, size: 32, height: 1.1),
      ],
    );
  }
}
