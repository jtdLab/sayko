part of '../sign_up_password.dart';

SignUpPasswordState _initialState() {
  return const SignUpPasswordState(
    status: SignUpPasswordStatus.idle,
    email: '',
    password: '',
  );
}

class SignUpPasswordCubit extends Cubit<SignUpPasswordState>
    with
        BlocPresentationMixin<
          SignUpPasswordState,
          SignUpPasswordPresentationEvent
        > {
  SignUpPasswordCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(_initialState());

  final AuthRepository _authRepository;

  void changeEmail(String email) {
    emit(state.copyWith(email: email));
  }

  void changePassword(String password) {
    emit(state.copyWith(password: password));
  }

  Future<void> signUp() async {
    emit(state.copyWith(status: SignUpPasswordStatus.loading));
    try {
      await _authRepository.signUpWithPassword(
        email: state.email,
        password: state.password,
      );
    } on AuthSignUpWithPasswordFailure catch (_) {
      emit(state.copyWith(status: SignUpPasswordStatus.idle));
      emitPresentation(SignUpPasswordPresentationEvent.signUpFailed());
    }
  }
}
