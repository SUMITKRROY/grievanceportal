

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grievanceportal/view/login.dart';

import '../utils/pageroute.dart';
import '../view/splash_screen.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
    /// Splash Screen
      case RoutePath.splashScreenPage:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

///Login screen
      case RoutePath.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      // case '/profile':
    //   final args = settings.arguments as Map<String, dynamic>;
    //   return MaterialPageRoute(
    //     builder: (_) => ProfileScreen(
    //         // argument1: args['argument1'],
    //         // argument2: args['argument2'],
    //         // argument3: args['argument3'],
    //         ),
    //   );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }

static void navigateToHome(BuildContext context) {
  Navigator.pushReplacementNamed(context, RoutePath.login);
}
//
// static void navigateToOtpScreen(BuildContext context, String mobileNumber) {
//   Navigator.pushNamed(context, '/otp_screen', arguments: mobileNumber);
// }
//
// static void navigateToProfile({required BuildContext context, String? argument1, int? argument2, bool? argument3}) {
//   Navigator.pushNamed(context, '/profile', arguments: {
//     'argument1': argument1,
//     'argument2': argument2,
//     'argument3': argument3,
//   });
// }
}