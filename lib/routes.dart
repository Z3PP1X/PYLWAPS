import 'package:frontend_ndfy/pages/home.dart';
import 'package:frontend_ndfy/login/login_screen.dart';
import 'package:frontend_ndfy/pricing/pricing.dart';


var appRoutes = {
  '/': (context) => const HomeScreen(),  
  '/login': (context) => const LoginScreen(),
  '/pricing': (context) => const PricingModule(),
  
};