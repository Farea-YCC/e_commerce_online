
import 'package:shopping/core/imports/imports.dart';

import '../../views/splash/splash_screen.dart';
Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/SplashScreen':
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case '/LoginPage':
      return MaterialPageRoute(builder: (context) =>  LoginPage());
    case '/SignUpPage':
      return MaterialPageRoute(builder: (context) =>  SignUpPage());
    case '/JoinApp':
      return MaterialPageRoute(builder: (context) => const JoinApp());
    case '/BottomNavBar':
      return MaterialPageRoute(builder: (context) => const BottomNavBar());
    default:
      return errorPage(settings);
  }
}
Route<dynamic> errorPage(RouteSettings settings) {
return MaterialPageRoute(builder: (_) => const ErrorScreen());}
