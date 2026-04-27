// Make `dart fix` keep unused variables
// ignore_for_file: cascade_invocations, unused_local_variable
import 'package:sayko/core/dio.dart';
import 'package:sayko/core/sembast.dart';
import 'package:sayko/data/local_auth/local_auth.dart';
import 'package:sayko/domain/app_data/app_data.dart';
import 'package:sayko/domain/auth/auth.dart';
import 'package:sayko/domain/user_data/user_data.dart';

abstract final class Di {
  static Future<void> init() async {
    // Third party
    final db = await _database();
    final dio = await _dio();

    // Data
    final localAuthApi = LocalAuthApi();
    final appDataStore = ObjectStore<AppData>(
      'app_data',
      db: db,
      fromJson: AppData.fromJson,
      toJson: (appData) => appData.toJson(),
    );
    final userDataStore = ObjectStore<UserData>(
      'user_data',
      db: db,
      fromJson: UserData.fromJson,
      toJson: (userData) => userData.toJson(),
    );

    // Domain
    appDataRepository = AppDataRepository(appDataStore: appDataStore);
    authRepository = AuthRepository(localAuthApi: localAuthApi);
    userDataRepository = UserDataRepository(userDataStore: userDataStore);
  }

  static late final AppDataRepository appDataRepository;
  static late final AuthRepository authRepository;
  static late final UserDataRepository userDataRepository;
}

Future<Database> _database() async {
  final db = await createSembast();
  return db;
}

Future<Dio> _dio() async {
  final baseOptions = BaseOptions(
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
    headers: {
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.acceptHeader: 'application/json',
    },
  );
  final dio = createDio(baseOptions: baseOptions);
  return dio;
}
