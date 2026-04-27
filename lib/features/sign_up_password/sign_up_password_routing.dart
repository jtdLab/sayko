part of 'sign_up_password.dart';

extension on BuildContext {
  void pop() {
    wouter.actions.pop();
  }

  Future<void> pushSignUpPassword({String? step}) async {
    final query = step != null ? '?step=$step' : '';
    return wouter.actions.push<void>('/auth/sign-up-password$query');
  }
}
