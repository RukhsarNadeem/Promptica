import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:no_prompt_image/views/login_view.dart';
import 'package:no_prompt_image/views/onboarding_view.dart';
import 'package:no_prompt_image/views/signup_view.dart';
import 'package:no_prompt_image/views/splash_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeProvider _themeProvider = ThemeProvider();
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _themeProvider,
      builder: (context, child) {
        return MaterialApp(
          title: 'Auth App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: SplashScreen(themeProvider: _themeProvider),
        );
      },
    );
  }
}

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}

