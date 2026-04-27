part of '../settings_appearance.dart';

SettingsAppearanceState _initialState({
  required AppDataRepository appDataRepository,
}) {
  final appData = appDataRepository.read();
  final appearance = appData.appearance;
  return SettingsAppearanceState(appearance: appearance);
}

class SettingsAppearanceCubit extends Cubit<SettingsAppearanceState> {
  SettingsAppearanceCubit({required AppDataRepository appDataRepository})
    : _appDataRepository = appDataRepository,
      super(_initialState(appDataRepository: appDataRepository));

  final AppDataRepository _appDataRepository;

  Future<void> changeAppearance(Appearance appearance) async {
    emit(state.copyWith(appearance: appearance));
    await _appDataRepository.update(appearance: appearance);
  }
}
