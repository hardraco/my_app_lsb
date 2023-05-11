import 'package:flutter/material.dart';
import 'package:my_app_lsb/models/models.dart';
import 'package:my_app_lsb/screens/aprender_screen.dart';
import 'package:my_app_lsb/screens/repasar_sccreen.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'aprender',
      name: 'Aprender',
      screen: const AprenderScreen(),
    ),
    MenuOption(
      route: 'repasar',
      name: 'Repasar',
      screen: const RepasarScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
