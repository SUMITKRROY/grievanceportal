
import 'package:package_info_plus/package_info_plus.dart';

class DeviceInfo{
  static String appName = '';
  static String packageName = '';
  static String version = '';
  static String buildNumber = '';

  static Future<void> getAppInfo() async {

    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appName = packageInfo.appName;
    packageName = packageInfo.packageName;
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;
  }
}
