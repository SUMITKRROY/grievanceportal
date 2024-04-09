import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../utils/device_info.dart';


class VersionCheckCubit extends Cubit<bool> {
  VersionCheckCubit() : super(false);

  Future<void> checkAppVersion() async {
    try {
      await DeviceInfo.getAppInfo();
      final currentAppVersion = DeviceInfo.version;
      final String? version = dotenv.env["version"];

      final isUpdateRequired = currentAppVersion.compareTo(version!) < 0;

      emit(isUpdateRequired);
    } catch (e) {
      // Handle errors
      emit(false);
    }
  }
}
