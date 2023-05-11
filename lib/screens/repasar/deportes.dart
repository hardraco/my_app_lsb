import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/widgets.dart';

class Deportes extends StatelessWidget {
  const Deportes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Deportes'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              CustomCard2(
                  name: 'Atletismo',
                  imagenUrl: 'assets/senhas/atletismo.gif',
                  ayuda1: 'Intente sacar un poco el pulgar'),
              CustomCard2(
                name: 'Basquet',
                imagenUrl: 'assets/senhas/basquet.gif',
                ayuda1: 'Trate de juntar los 4 dedos',
              ),
              CustomCard2(
                  name: 'Volley',
                  imagenUrl: 'assets/senhas/volley.gif',
                  ayuda1: ''),
              CustomCard2(
                name: 'Karate',
                imagenUrl: 'assets/senhas/karate.gif',
                ayuda1: 'Junte los dedos al pulgar levantando el índice',
              ),
              CustomCard2(
                  name: 'Judo',
                  imagenUrl: 'assets/senhas/judo.gif',
                  ayuda1: 'Esta seña se asemeja a una pequeña garra'),
              CustomCard2(
                name: 'Ping Pong',
                imagenUrl: 'assets/senhas/pingpong.gif',
                ayuda1: 'Dibuje una mesa y juegue',
              ),
              CustomCard2(
                  name: 'Tenis',
                  imagenUrl: 'assets/senhas/tenis.gif',
                  ayuda1: 'Como una pequeña pistola a un dedo'),
              CustomCard2(
                name: 'Raquet',
                imagenUrl: 'assets/senhas/raquet.gif',
                ayuda1: 'Como una pequeña pistola a dos dedos',
              )
            ]));
  }
}
