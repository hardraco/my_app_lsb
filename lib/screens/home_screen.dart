import 'package:flutter/material.dart';
import 'package:my_app_lsb/router/app_routes.dart';
import 'package:my_app_lsb/screens/repasar_sccreen.dart';
import 'package:my_app_lsb/screens/screens.dart';

import '../search/search_delegate.dart';
import '../theme/appTheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        elevation: 0,
        actions: [
          IconButton(
              icon: const Icon(Icons.search_outlined),
              color: Colors.grey[400],
              iconSize: 60,
              onPressed: () => showSearch(
                  context: context,
                  delegate: SenhaSearchDelegate(items: alertDialogItems)))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LSB',
              style: TextStyle(fontSize: 105),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Reforzamiento Digital en el Aprendizaje de la Lengua de Señas Boliviano',
              style: TextStyle(fontSize: 35),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 290),
            /* Padding(
                padding: const EdgeInsets.symmetric(horizontal: 165.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadiusDirectional.circular(15)),
                  child: const Center(
                    child: Text(
                      'APRENDER',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                  ),
                )), */
            const SizedBox(
              height: 20,
            ),
            // Opcion Aprender
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, menuOptions[0].route);
                },
                child: const Text(
                  'APRENDER',
                  style: TextStyle(fontSize: 50),
                )),
            SizedBox(
              height: 30,
            ),
            // Opcion Repasar
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, menuOptions[1].route);
                },
                child: const Text(
                  'REPASAR',
                  style: TextStyle(fontSize: 50),
                ))

            /*Padding(
                padding: const EdgeInsets.symmetric(horizontal: 165.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadiusDirectional.circular(15)),
                  child: Center(
                    child: Text(
                      'REPASAR',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                  ),
                )),*/
          ],
        ),
      ),

      /*body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadiusDirectional.circular(12)),
          child: ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    leading:
                        Icon(menuOptions[index].icon, color: AppTheme.primary),
                    title: Text(menuOptions[index].name),
                    onTap: () {
                      Navigator.pushNamed(context, menuOptions[index].route);
                    },
                  ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: menuOptions.length),
        ),
      ),*/
    );
  }
}
