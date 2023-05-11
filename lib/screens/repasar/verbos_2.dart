import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/widgets.dart';

class Verbos_2 extends StatelessWidget {
  const Verbos_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lección 2'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
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
