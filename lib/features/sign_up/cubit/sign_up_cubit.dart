part of '../sign_up.dart';

void _initialState() {}

class SignUpCubit extends Cubit<void> {
  SignUpCubit({required AuthRepository authRepository})
    : _authRepository = authRepository,
      super(_initialState());

  final AuthRepository _authRepository;

  Future<void> signInWithApple() async {
    await _authRepository.signInWithApple();
  }

  Future<void> signInWithGoogle() async {
    await _authRepository.signInWithGoogle();
  }
}
