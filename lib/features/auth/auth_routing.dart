part of 'auth.dart';

bool _isAuthLoginOrSignUpScreen(String fullPath) {
  return fullPath == '/auth/login' || fullPath == '/auth/sign-up';
}

extension AuthFlowRoutingBuildContextX on BuildContext {
  /// Opens email login. From the auth landing this pushes; login ↔ sign-up uses
  /// replace so peer screens are not stacked.
  Future<void> pushLogin() => _goToAuthEmailPath('/auth/login');

  /// Opens email sign-up. Same stack rules as pushLogin.
  Future<void> pushSignUp() => _goToAuthEmailPath('/auth/sign-up');

  Future<void> _goToAuthEmailPath(String path) async {
    final state = appWouter.state;
    if (state.fullPath == path) return;

    if (state.stack.any((e) => e.path == path)) {
      wouter.actions.popUntil((p) => p == path);
      return;
    }

    final current = state.fullPath;
    if (_isAuthLoginOrSignUpScreen(current) &&
        _isAuthLoginOrSignUpScreen(path) &&
        current != path) {
      await wouter.actions.replace<void>(path);
      return;
    }

    await wouter.actions.push<void>(path);
  }
}
