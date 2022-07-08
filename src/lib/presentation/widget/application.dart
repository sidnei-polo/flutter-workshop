import 'package:flutter/material.dart';
import 'package:flutter_workshop/presentation/contoller/counter_controller.dart';
import 'package:flutter_workshop/presentation/contoller/navigation_controller.dart';
import 'package:flutter_workshop/presentation/widget/home_page.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final route = context.watch<NavigationController>().value;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: Navigator(
        pages: [
          MaterialPage(
            child: ChangeNotifierProvider<CounterController>(
                create: (_) => CounterController(),
                child: const HomePage(title: "Home Page")),
          ),
        ],
        onPopPage: (route, result) =>
            handleBackNavigation(context, route, result),
      ),
    );
  }

  bool handleBackNavigation(BuildContext context, Route route, result) {
    if (!route.didPop(result)) {
      return false;
    }
    context.read<NavigationController>().navigateBack();
    return true;
  }
}
