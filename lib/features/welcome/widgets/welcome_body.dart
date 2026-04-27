part of '../welcome.dart';

class WelcomeBody extends HookWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<WelcomeCubit>();

    final (slide,) = useBlocSelector(
      cubit,
      (WelcomeState state) => (state.slideIndex,),
    );
    final tone = switch (slide) {
      0 => SaykoTone.sand,
      1 => SaykoTone.sage,
      _ => SaykoTone.dusk,
    };

    return SaykoAbstractScape(
      tone: tone,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(28, 12, 28, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Align(
                alignment: Alignment.topRight,
                child: WelcomeSkipButton(),
              ),
              Spacer(),
              WelcomeSlide(),
              SaykoGap.three(),
              WelcomeDots(),
              SaykoGap.two(),
              WelcomeContinueButton(),
            ],
          ),
        ),
      ),
    );
  }
}
