import 'package:flutter/material.dart';

class NavigationController extends ValueNotifier<String> {
  NavigationController() : super("/");

  void navigateTo(String route, Object param) {
    super.value = route;
  }

  void navigateBack() {}
}
