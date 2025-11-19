import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/login_view.dart';

class AuthController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var isDarkMode = false.obs;

  void toggleTheme(bool value) {
    isDarkMode.value = value;
    Get.changeThemeMode(value ? ThemeMode.dark : ThemeMode.light);
  }

  void login() {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please enter email and password');
      return;
    }

    // Add your login logic here (API call, Firebase, etc.)
    Get.snackbar('Login', 'Logged in as $email');
  }

  void loginWithGoogle() {
    // Add Google login logic here
    Get.snackbar('Google Login', 'Google login tapped');
  }

  void loginWithApple() {
    // Add Apple login logic here
    Get.snackbar('Apple Login', 'Apple login tapped');
  }
  final nameController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  void signup() {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final confirmPassword = confirmPasswordController.text.trim();

    if (name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
    }

    if (password != confirmPassword) {
      Get.snackbar('Error', 'Passwords do not match');
      return;
    }

    // Add your signup logic here (API call, Firebase, etc.)
    Get.snackbar('Signup', 'Account created for $name');
    // Get.off(() => LoginScreen(themeProvider: null,));
  }
}