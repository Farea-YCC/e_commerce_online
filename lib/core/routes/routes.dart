import '../../features/presentation/screens/auth/login.dart';
import '../../features/presentation/screens/auth/signup.dart';
import '../../features/presentation/screens/home/search_button.dart';
import '../../features/presentation/screens/splash/introduction_app.dart';
import '../../features/presentation/screens/splash/splash.dart';
import '../../features/presentation/widgets/bottom_nav_bar.dart';
import '../imports/imports.dart';
Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/SplashScreen':
      return MaterialPageRoute(builder: (context) => const SplashScreen());
    case '/LoginPage':
      return MaterialPageRoute(builder: (context) => const LoginPage());
    case '/SignUpPage':
      return MaterialPageRoute(builder: (context) => const SignUpPage());
    case '/BottomNavBar':
      return MaterialPageRoute(builder: (context) => const BottomNavBar());
    case '/IntroductionApp':
      return MaterialPageRoute(builder: (context) => const IntroductionApp());
    case '/Search':
      return MaterialPageRoute(builder: (context) => const Search());
    default:
      return errorPage(settings);
  }
}

Route<dynamic> errorPage(RouteSettings settings) {
  return MaterialPageRoute(builder: (_) => const ErrorScreen());
}
