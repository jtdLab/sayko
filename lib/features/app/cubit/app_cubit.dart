part of '../app.dart';

AppState _initialState({
  required AppDataRepository appDataRepository,
  required AuthRepository authRepository,
  required UserDataRepository userDataRepository,
}) {
  final user = authRepository.readUser();
  final appData = appDataRepository.read();
  final userData = userDataRepository.read();
  final status = _status(() => user, () => userData);
  final appearance = appData.appearance;
  return AppState(status: status, appearance: appearance);
}

class AppCubit extends Cubit<AppState> with CubitSubscriptionMixin {
  AppCubit({
    required AppDataRepository appDataRepository,
    required AuthRepository authRepository,
    required UserDataRepository userDataRepository,
    required FutureOr<void> Function() onUnauthenticated,
  }) : _appDataRepository = appDataRepository,
       _authRepository = authRepository,
       _userDataRepository = userDataRepository,
       _onUnauthenticated = onUnauthenticated,
       super(
         _initialState(
           appDataRepository: appDataRepository,
           authRepository: authRepository,
           userDataRepository: userDataRepository,
         ),
       ) {
    emitOnEach(appDataRepository.watch(), (appData) {
      final appearance = appData.appearance;
      emit(state.copyWith(appearance: appearance));
    });
    emitOnEach(authRepository.watchUser(), (user) {
      final status = _status(() => user, userDataRepository.read);
      emit(state.copyWith(status: status));
      if (status == AppStatus.unauthenticated) {
        onUnauthenticated();
      }
    });
    emitOnEach(userDataRepository.watch(), (userData) {
      final status = _status(authRepository.readUser, () => userData);
      emit(state.copyWith(status: status));
      if (status == AppStatus.unauthenticated) {
        onUnauthenticated();
      }
    });
  }

  final AppDataRepository _appDataRepository;

  final AuthRepository _authRepository;

  final UserDataRepository _userDataRepository;

  final FutureOr<void> Function() _onUnauthenticated;
}
