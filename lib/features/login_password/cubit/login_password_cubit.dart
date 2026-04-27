part of '../login_password.dart';

LoginPasswordState _initialState() {
  return const LoginPasswordState(
    status: LoginPasswordStatus.idle,
    email: '',
    password: '',
  );
}

class LoginPasswordCubit extends Cubit<LoginPasswordState>
    with
        BlocPresentationMixin<
          LoginPasswordState,
          LoginPasswordPresentationEvent
        > {
  LoginPasswordCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(_initialState());

  final AuthRepository _authRepository;

  void changeEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void changePassword(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> signIn() async {
    emit(state.copyWith(status: LoginPasswordStatus.loading));
    try {
      await _authRepository.signInWithPassword(
        email: state.email,
        password: state.password,
      );
    } on AuthSignInWithPasswordFailure catch (_) {
      emit(state.copyWith(status: LoginPasswordStatus.idle));
      emitPresentation(LoginPasswordPresentationEvent.signInFailed());
    }
  }
}
