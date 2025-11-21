import 'package:flutter/material.dart';
import 'screens/authscreens/login_screen.dart';
import 'screens/authscreens/registration_screen.dart';
import 'screens/authscreens/forgot_password_screen.dart';
import 'screens/authscreens/otp_verification.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color primaryColor = Color(0xFF001F54); // Navy Blue
  final Color accentColor = Color(0xFFFFD700);  // Gold

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Primary School App',

      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: accentColor),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'ComicSansMS',
      ),

      // ALWAYS START HERE
      initialRoute: '/splash',

      routes: {
        '/splash': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/otp-verification': (context) => OTPVerificationScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}
