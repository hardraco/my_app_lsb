import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/widgets.dart';

class Dias extends StatelessWidget {
  const Dias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Dias de la semana'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCard2(
                  name: 'Lunes',
                  imagenUrl: 'assets/senhas/lunes.gif',
                  ayuda1: 'Intente sacar un poco el pulgar'),
              CustomCard2(
                name: 'Martes',
                imagenUrl: 'assets/senhas/martes.gif',
                ayuda1: 'Trate de juntar los 4 dedos',
              ),
              CustomCard2(
                  name: 'Miercoles',
                  imagenUrl: 'assets/senhas/miercoles.gif',
                  ayuda1: ''),
              CustomCard2(
                name: 'Jueves',
                imagenUrl: 'assets/senhas/jueves.gif',
                ayuda1: 'Junte los dedos al pulgar levantando el índice',
              ),
              CustomCard2(
                  name: 'Viernes',
                  imagenUrl: 'assets/senhas/viernes.gif',
                  ayuda1: 'Esta seña se asemeja a una pequeña garra'),
              CustomCard2(
                name: 'Sabado',
                imagenUrl: 'assets/senhas/sabado.gif',
                ayuda1: 'Como todo ok',
              ),
              CustomCard2(
                  name: 'Domingo',
                  imagenUrl: 'assets/senhas/domingo.gif',
                  ayuda1: 'Como una pequeña pistola a un dedo'),
              CustomCard2(
                name: 'Feriado',
                imagenUrl: 'assets/senhas/feriad.gif',
                ayuda1: 'Como una pequeña pistola a dos dedos',
              )
            ]));
  }
}
