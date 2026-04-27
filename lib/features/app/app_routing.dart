part of 'app.dart';

final _appWouterKey = GlobalKey();

extension AppRoutingBuildContextX on BuildContext {
  NavigatorState get appNavigator {
    return Navigator.of(this, rootNavigator: true);
  }

  Future<T?> showDialog<T>(Widget Function(BuildContext context) builder) {
    return showFDialog<T>(
      (context) => BackButtonListener(
        onBackButtonPressed: () async {
          appNavigator.pop<T>();
          return true;
        },
        child: builder(context),
      ),
      useRootNavigator: true,
    );
  }
}

WouterSelector get appWouter {
  return _appWouterKey.currentContext!.wouter;
}

WouterRouterDelegate _routerDelegate(BuildContext context) {
  final cubit = context.read<AppCubit>();
  final status = cubit.state.status;
  final userData = context.read<UserDataRepository>().read();
  final onboardingPath = switch (userData.onboardingStep) {
    null => '/onboarding/welcome',
    0 => '/onboarding/welcome',
    1 => '/onboarding/safety-check',
    2 => '/onboarding/safety-blocked',
    3 => '/onboarding/assessment',
    _ => '/onboarding/results',
  };
  final initialPath = switch (status) {
    AppStatus.unauthenticated => '/auth',
    AppStatus.authenticated => '/verify-email',
    AppStatus.authenticatedAndVerified => '/account-create',
    AppStatus.authenticatedAndAccountCreated => onboardingPath,
    AppStatus.authenticatedAndAccountCreatedAndOnboarded => '/today',
  };
  return WouterRouterDelegate(
    initial: initialPath,
    builder: (context) => AppView(key: _appWouterKey),
  );
}

WouterRouterDelegate _useRouterDelegate() {
  final context = useContext();
  final routerDelegate = useMemoized(() => _routerDelegate(context));
  return routerDelegate;
}
