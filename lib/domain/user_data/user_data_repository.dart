part of 'user_data.dart';

class UserDataRepository {
  UserDataRepository({required ObjectStore<UserData> userDataStore})
    : _userDataStore = userDataStore;

  final ObjectStore<UserData> _userDataStore;

  @visibleForTesting
  static Logger logger = Logger('UserDataRepository');

  UserData read() {
    return _userDataStore.read() ?? const UserData(displayName: '');
  }

  Future<void> update({required String? displayName}) async {
    try {
      final current = read();
      final updated = current.copyWith(
        displayName: displayName ?? current.displayName,
      );
      await _userDataStore.put(updated);
    } on Object catch (e, stackTrace) {
      logger.severe('Failed to update user data.', e, stackTrace);
      throw UserDataUpdateFailure();
    }
  }

  Stream<UserData> watch() {
    return _userDataStore.watch();
  }
}
