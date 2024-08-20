import 'package:flutter/material.dart';
import 'package:webspark_test/core/navigation/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.hompePageRoute,
      navigatorKey: RouteGenerator.mainNavigatorKey,
    );
  }
}
