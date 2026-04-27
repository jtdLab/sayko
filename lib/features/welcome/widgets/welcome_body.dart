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
      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(28, 12, 28, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Spacer(),
              WelcomeSlide(),
              SaykoGap.three(),
              WelcomeDots(),
              SaykoGap.two(),
              WelcomeContinueButton(),
              SaykoGap.one(),
              Center(child: WelcomeSkipButton()),
            ],
          ),
        ),
      ),
    );
  }
}
