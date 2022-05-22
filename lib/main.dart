import 'package:flutter/material.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:fl_componentes/router/app_routes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const CardScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings)
    );
  }
}