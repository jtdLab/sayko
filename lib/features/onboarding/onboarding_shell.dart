part of 'onboarding.dart';

class OnboardingShell extends HookWidget {
  const OnboardingShell({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      childPad: false,
      child: WouterPage(
        routes: {
          '/welcome': BlocProvider(
            create: (_) => WelcomeCubit(),
            child: const WelcomePage(),
          ),
          '/safety-check': BlocProvider(
            create: (_) => SafetyCheckCubit(),
            child: const SafetyCheckPage(),
          ),
          '/safety-blocked': const SafetyBlockedPage(),
          '/assessment': BlocProvider(
            create: (_) => AssessmentCubit(),
            child: const AssessmentPage(),
          ),
          '/results': const ResultsPage(),
        },
        builder: (context, controller, pages) =>
            PageView(controller: controller, children: pages),
      ),
    );
  }
}
