part of '../login.dart';

void _initialState() {}

class LoginCubit extends Cubit<void> {
  LoginCubit({required AuthRepository authRepository})
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
