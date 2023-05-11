import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/widgets.dart';

class Alimentos extends StatelessWidget {
  const Alimentos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alimentos Bebidas'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCard2(
                  name: 'Desayuno',
                  imagenUrl: 'assets/senhas/desayuno.gif',
                  ayuda1: 'Intente sacar un poco el pulgar'),
              CustomCard2(
                name: 'Almuerzo',
                imagenUrl: 'assets/senhas/almuerzo.gif',
                ayuda1: 'Trate de juntar los 4 dedos',
              ),
              CustomCard2(
                  name: 'Cena',
                  imagenUrl: 'assets/senhas/cena.gif',
                  ayuda1: ''),
              CustomCard2(
                name: 'Té',
                imagenUrl: 'assets/senhas/te.gif',
                ayuda1: 'Junte los dedos al pulgar levantando el índice',
              ),
              CustomCard2(
                  name: 'Café',
                  imagenUrl: 'assets/senhas/cafe.gif',
                  ayuda1: 'Esta seña se asemeja a una pequeña garra'),
              CustomCard2(
                name: 'Chocolate',
                imagenUrl: 'assets/senhas/chocolate.gif',
                ayuda1: 'Como todo ok',
              ),
              CustomCard2(
                  name: 'Mate',
                  imagenUrl: 'assets/senhas/mate.gif',
                  ayuda1: 'Como una pequeña pistola a un dedo'),
              CustomCard2(
                name: 'Leche',
                imagenUrl: 'assets/senhas/leche.gif',
                ayuda1: 'Como una pequeña pistola a dos dedos',
              ),
              CustomCard2(
                  name: 'Agua',
                  imagenUrl: 'assets/senhas/agua.gif',
                  ayuda1: 'Promesa'),
              CustomCard2(
                name: 'Huevo',
                imagenUrl: 'assets/senhas/huevo.gif',
                ayuda1: 'Dibuje una J con la seña de la letra I',
              )
            ]));
  }
}
