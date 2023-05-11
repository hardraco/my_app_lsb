import 'package:flutter/material.dart';
import 'package:my_app_lsb/widgets/widgets.dart';

class Leccion_7 extends StatelessWidget {
  const Leccion_7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lección 3'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            CustomCard2(
                name: 'Buendía', imagenUrl: 'assets/buenDia.gif', ayuda1: ''),
            CustomCard2(
              name: 'Buenas tardes',
              imagenUrl: 'assets/buenasTardes.gif',
              ayuda1: '',
            )
          ],
        ));
  }
}
