import 'package:logger/logger.dart';
class MyFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

// var logger = Logger(filter: MyFilter());
// logger.d('sid');