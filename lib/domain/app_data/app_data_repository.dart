part of 'app_data.dart';

class AppDataRepository {
  AppDataRepository({required ObjectStore<AppData> appDataStore})
    : _appDataStore = appDataStore;

  final ObjectStore<AppData> _appDataStore;

  @visibleForTesting
  static Logger logger = Logger('AppDataRepository');

  AppData read() {
    return _appDataStore.read() ?? const AppData(appearance: Appearance.system);
  }

  Future<void> update({required Appearance? appearance}) async {
    final current = read();
    final updated = current.copyWith(
      appearance: appearance ?? current.appearance,
    );
    await _appDataStore.put(updated);
  }

  Stream<AppData> watch() {
    return _appDataStore.watch();
  }
}
