import 'package:flutter/material.dart';

class NavigationService {
  GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

  static NavigationService instance = NavigationService();

  NavigationService();

  Future<dynamic>? navigateTo(String routeName) {
    return navigationKey.currentState?.pushNamed(routeName);
  }

  Future<dynamic>? clearAndNavigateTo(String routeName) {
    return navigationKey.currentState
        ?.pushNamedAndRemoveUntil(routeName, (Route<dynamic> route) => false);
  }

  Future<dynamic>? navigateToRoute(MaterialPageRoute route) {
    return navigationKey.currentState?.push(route);
  }

  Future<dynamic>? navigateToPage(BuildContext context, Widget page) {
    return navigateToRoute(MaterialPageRoute(
      builder: (context) => page,
    ));
  }

  void goBack() {
    return navigationKey.currentState?.pop();
  }
}
