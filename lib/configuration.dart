import 'package:grievanceportal/utils/API.dart';
import 'config/route.dart';

class Configuration{
  static Route route = Route();
  static API api = API(route:route);
  static bool verboseflag = false;

}