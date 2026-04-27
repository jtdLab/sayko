part of '../not_found.dart';

class NotFoundBody extends HookWidget {
  const NotFoundBody({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;

    final spacings = theme.spacings;

    return Center(
      child: Padding(
        padding: EdgeInsets.all(spacings.eight),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            NotFoundIcon(),
            SaykoGap.three(),
            NotFound404Text(),
            SaykoGap.one(),
            NotFoundTitle(),
            SaykoGap.one(),
            NotFoundSubtitle(),
            SaykoGap.three(),
            NotFoundGoHomeButton(),
          ],
        ),
      ),
    );
  }
}
