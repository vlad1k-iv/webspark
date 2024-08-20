import 'package:flutter/material.dart';
import 'package:webspark_test/presentation/home_page/home_page_view.dart';

class Routes {
  static const String hompePageRoute = '/homePage';
}

class RouteGenerator {
  static final GlobalKey<NavigatorState> mainNavigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.hompePageRoute:
        return MaterialPageRoute<HomePageView>(
          builder: (_) => const HomePageView(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute<Widget>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route'),
        ),
        body: const Center(
          child: Text('Route not found'),
        ),
      ),
    );
  }
}
