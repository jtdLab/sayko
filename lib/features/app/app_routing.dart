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
  final initialPath = switch (status) {
    AppStatus.unauthenticated => '/auth',
    AppStatus.authenticated => '/verify-email',
    AppStatus.authenticatedAndVerified => '/account-create',
    AppStatus.authenticatedAndAccountCreated => '/home',
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
