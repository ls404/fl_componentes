import 'package:fl_componentes/models/menu_option.dart';
import 'package:fl_componentes/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(route: 'home',  name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home_max_sharp),
    MenuOption(route: 'listview1',  name: 'Listview tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2',  name: 'Listview tipo 2', screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alert',  name: 'Alertas - Alerts', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOption(route: 'card',  name: 'Tarjetas - Cards', screen: const CardScreen(), icon: Icons.credit_card),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const Listview1Screen(),
    'listview2': (context) => const Listview2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
