import 'package:flutter/material.dart';
import 'package:flutter_workshop/presentation/contoller/navigation_controller.dart';
import 'package:flutter_workshop/presentation/widget/application.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<NavigationController>(
      create: (_) => NavigationController(),
      child: const Application(),
    ),
  );
}
