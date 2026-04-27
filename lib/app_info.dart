import 'package:meta/meta.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  @visibleForTesting
  AppInfo({Future<PackageInfo> Function()? packageInfoBuilder})
    : _packageInfoBuilder = packageInfoBuilder ?? PackageInfo.fromPlatform;

  @visibleForTesting
  static AppInfo? overrides;

  static AppInfo get instance => overrides ?? _instance;

  static final AppInfo _instance = AppInfo();

  final Future<PackageInfo> Function() _packageInfoBuilder;

  late final PackageInfo _packageInfo;

  Future<void> init() async {
    _packageInfo = await _packageInfoBuilder();
  }

  String get version => _packageInfo.version;

  String get packageName => _packageInfo.packageName;

  String get buildNumber => _packageInfo.buildNumber;
}
