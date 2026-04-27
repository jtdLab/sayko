part of '../settings.dart';

SettingsState _initialState({required AppDataRepository appDataRepository}) {
  final appData = appDataRepository.read();
  final appearance = appData.appearance;
  return SettingsState(appearance: appearance);
}

class SettingsCubit extends Cubit<SettingsState> with CubitSubscriptionMixin {
  SettingsCubit({
    required AppDataRepository appDataRepository,
    required AuthRepository authRepository,
  }) : _appDataRepository = appDataRepository,
       _authRepository = authRepository,
       super(_initialState(appDataRepository: appDataRepository)) {
    emitForEach(
      appDataRepository.watch(),
      (appData) => state.copyWith(appearance: appData.appearance),
    );
  }

  final AppDataRepository _appDataRepository;

  final AuthRepository _authRepository;

  Future<void> deleteAccount() async {
    await _authRepository.deleteAccount();
  }

  Future<void> logout() async {
    await _authRepository.signOut();
  }
}
