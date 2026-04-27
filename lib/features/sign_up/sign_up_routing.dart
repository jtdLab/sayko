part of 'sign_up.dart';

extension SignUpRoutingBuildContextX on BuildContext {
  void pop() {
    wouter.actions.pop();
  }

  Future<void> pushSignUpPassword() async {
    await wouter.actions.push<void>('/auth/sign-up-password');
  }
}
