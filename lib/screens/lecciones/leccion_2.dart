import 'package:flutter/material.dart';
import 'package:my_app_lsb/widgets/widgets.dart';

class Leccion_2 extends StatelessWidget {
  const Leccion_2({super.key});

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
                  name: '0',
                  imagenUrl: 'assets/senhas/0.JPG',
                  ayuda1: 'Intente sacar un poco el pulgar'),
              CustomCard2(
                name: '1',
                imagenUrl: 'assets/senhas/1.JPG',
                ayuda1: 'Trate de juntar los 4 dedos',
              ),
              CustomCard2(
                  name: '2', imagenUrl: 'assets/senhas/2.JPG', ayuda1: ''),
              CustomCard2(
                name: '3',
                imagenUrl: 'assets/senhas/3.JPG',
                ayuda1: 'Junte los dedos al pulgar levantando el índice',
              ),
              CustomCard2(
                  name: '4',
                  imagenUrl: 'assets/senhas/4.JPG',
                  ayuda1: 'Esta seña se asemeja a una pequeña garra'),
              CustomCard2(
                name: '5',
                imagenUrl: 'assets/senhas/5.JPG',
                ayuda1: 'Como todo ok',
              ),
              CustomCard2(
                  name: '6',
                  imagenUrl: 'assets/senhas/6.JPG',
                  ayuda1: 'Como una pequeña pistola a un dedo'),
              CustomCard2(
                name: '7',
                imagenUrl: 'assets/senhas/7.JPG',
                ayuda1: 'Como una pequeña pistola a dos dedos',
              ),
              CustomCard2(
                  name: '8',
                  imagenUrl: 'assets/senhas/8.JPG',
                  ayuda1: 'Promesa'),
              CustomCard2(
                name: '9',
                imagenUrl: 'assets/senhas/9.JPG',
                ayuda1: 'Dibuje una J con la seña de la letra I',
              )
            ]));
  }
}
