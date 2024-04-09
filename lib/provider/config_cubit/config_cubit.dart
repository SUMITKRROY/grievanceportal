import 'package:bloc/bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:meta/meta.dart';

import '../../configuration.dart';

part 'config_state.dart';

class ConfigCubit extends Cubit<ConfigState> {
  ConfigCubit({required this.configuration}) : super(ConfigInitial()) {
    printVerboseFlag();
    printUrl();
  }

  final Configuration configuration;

  ConfigCubit get(context) => ConfigCubit(configuration: configuration);

  final String? myUrl = dotenv.env["myUrl"];

  // Getter method to access the Configuration object
  Configuration get config => configuration;

  // Example method using the configuration
  void printVerboseFlag() {
    print(config.verboseflag);
    emit(ConfigLoadedState(check: config.verboseflag));
  }

  void printUrl() {
    print(myUrl);
  }
}

