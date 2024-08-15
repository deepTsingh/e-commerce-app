import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void navigateToHome() {
    navigatorKey.currentState?.pushReplacementNamed('/home');
  }

  void navigateToProducts() {
    navigatorKey.currentState?.pushReplacementNamed('/products');
  }

  void navigateToServices() {
    navigatorKey.currentState?.pushReplacementNamed('/services');
  }

  void navigateToUser() {
    navigatorKey.currentState?.pushReplacementNamed('/user');
  }
}
