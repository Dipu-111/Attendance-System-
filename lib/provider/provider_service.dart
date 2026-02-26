import 'package:flutter/cupertino.dart';

class NavigationService {
  NavigationService._internal();

  // Single instance (lazy initialization)
  static final NavigationService _instance = NavigationService._internal();

  // Factory constructor returns the same instance
  factory NavigationService() {
    return _instance;
  }
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {Object? arguments}) {
    return navigatorKey.currentState!.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }
}
