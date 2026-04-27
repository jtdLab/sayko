part of 'onboarding.dart';

class OnboardingShell extends HookWidget {
  const OnboardingShell({super.key});

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      childPad: false,
      child: WouterPage(
        routes: {
          // Keys must be prefixes of [WouterState.fullPath] (e.g. /onboarding/…),
          // not segments relative to /onboarding, or [WouterPage] never maps URL → page index.
          '/onboarding/welcome': BlocProvider(
            create: (_) => WelcomeCubit(),
            child: const WelcomePage(),
          ),
          '/onboarding/safety-check': BlocProvider(
            create: (_) => SafetyCheckCubit(),
            child: const SafetyCheckPage(),
          ),
          '/onboarding/safety-blocked': const SafetyBlockedPage(),
          '/onboarding/assessment': BlocProvider(
            create: (_) => AssessmentCubit(),
            child: const AssessmentPage(),
          ),
          '/onboarding/results': const ResultsPage(),
        },
        builder: (context, controller, pages) => PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: pages,
        ),
      ),
    );
  }
}
