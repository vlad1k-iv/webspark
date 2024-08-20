import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webspark_test/core/di/di.dart';
import 'package:webspark_test/presentation/home_page/bloc/home_page_cubit.dart';
import 'package:webspark_test/presentation/home_page/home_page_view.dart';
import 'package:webspark_test/presentation/loading_page/loading_page.dart';

class Routes {
  static const String homePageRoute = '/homePage';
  static const String loadingPageRoute = '/loadingPage';
}

class RouteGenerator {
  static final GlobalKey<NavigatorState> mainNavigatorKey =
      GlobalKey<NavigatorState>();

  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.homePageRoute:
        return MaterialPageRoute<HomePageView>(
          builder: (_) => BlocProvider(
            create: (context) => locator.get<HomePageCubit>(),
            child: const HomePageView(),
          ),
        );
      case Routes.loadingPageRoute:
        return MaterialPageRoute<HomePageView>(
          builder: (_) => BlocProvider<HomePageCubit>.value(
            value: routeSettings.arguments as HomePageCubit,
            child: const LoadingPage(),
          ),
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
