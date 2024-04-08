import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grievanceportal/config/theamdata.dart';
import 'package:grievanceportal/configuration.dart';
import 'package:grievanceportal/provider/login/login_bloc.dart';
import 'package:grievanceportal/route/route_generater.dart';
import 'package:grievanceportal/utils/pageroute.dart';
import 'package:grievanceportal/view/grievance.dart';
import 'package:grievanceportal/view/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(create: (_) => LoginBloc()),
      ],
      child: MaterialApp(
        initialRoute: RoutePath.splashScreenPage,
        onGenerateRoute: MyRoutes.generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Grievance portal',
        theme: themeData,
        //home: const SplashScreen(),
      ),
    );
  }
}

