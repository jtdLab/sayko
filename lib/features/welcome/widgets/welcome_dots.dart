part of '../welcome.dart';

class WelcomeDots extends HookWidget {
  const WelcomeDots({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WelcomeCubit>();
    final colors = context.theme.colors;

    final (slide,) = useBlocSelector(
      cubit,
      (WelcomeState state) => (state.slideIndex,),
    );

    return Row(
      children: List.generate(3, (i) {
        final active = i == slide;
        return Expanded(
          flex: active ? 2 : 1,
          child: Container(
            height: 4,
            margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              color: active ? colors.foreground : colors.border,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        );
      }),
    );
  }
}
