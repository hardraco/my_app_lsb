import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/widgets.dart';

class Departamentos extends StatelessWidget {
  const Departamentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Departamentos de Bolivia'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCard2(
                  name: 'La Paz',
                  imagenUrl: 'assets/senhas/laPaz.gif',
                  ayuda1:
                      'Dibuje una Z con la letra L y terminando con la letra P'),
              CustomCard2(
                name: 'Oruro',
                imagenUrl: 'assets/senhas/oruro.gif',
                ayuda1: 'O s en la cabeza',
              ),
              CustomCard2(
                  name: 'Santa Cruz',
                  imagenUrl: 'assets/senhas/santaCruz.gif',
                  ayuda1: 'Simule que esta cargando una vasija en el hombro'),
              CustomCard2(
                name: 'Tarija',
                imagenUrl: 'assets/senhas/tarija.gif',
                ayuda1: 'Una flor en la cabeza',
              ),
              CustomCard2(
                  name: 'Potosi',
                  imagenUrl: 'assets/senhas/potosi.gif',
                  ayuda1: 'P con ambas manos y dibuje el cerro rico de potosi'),
              CustomCard2(
                name: 'Beni',
                imagenUrl: 'assets/senhas/beni.gif',
                ayuda1: 'Por el ganado',
              ),
              CustomCard2(
                  name: 'Pando',
                  imagenUrl: 'assets/senhas/pando.gif',
                  ayuda1: ''),
              CustomCard2(
                name: 'Cochabamba',
                imagenUrl: 'assets/senhas/cochabamba.gif',
                ayuda1: 'Deletrea CBBA',
              ),
              CustomCard2(
                  name: 'Sucre',
                  imagenUrl: 'assets/senhas/sucre.gif',
                  ayuda1: 'Se parece a una llamita'),
            ]));
  }
}
