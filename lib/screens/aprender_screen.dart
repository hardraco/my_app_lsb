import 'package:flutter/material.dart';
import 'package:my_app_lsb/screens/screens.dart';
import 'package:my_app_lsb/widgets/custom_card.dart';

class AprenderScreen extends StatelessWidget {
  const AprenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('APRENDER')),
        body: Center(
          child: ListView(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomCard(
                      name: 'Lección 1',
                      imagenUrl: 'assets/images/lec1.png',
                      pantalla: Leccion_1(),
                    ),
                    CustomCard(
                      name: 'Lección 2',
                      imagenUrl: 'assets/images/lec2.png',
                      pantalla: Leccion_2(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomCard(
                      name: 'Lección 3',
                      imagenUrl: 'assets/images/lec3.png',
                      pantalla: Leccion_3(),
                    ),
                    CustomCard(
                      name: 'Lección 4',
                      imagenUrl: 'assets/images/lec4.png',
                      pantalla: Leccion_4(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomCard(
                      name: 'Lección 5',
                      imagenUrl: 'assets/images/lec5.png',
                      pantalla: Leccion_2(),
                    ),
                    CustomCard(
                      name: 'Lección 6',
                      imagenUrl: 'assets/images/lec6.png',
                      pantalla: Leccion_2(),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CustomCard(
                      name: 'Lección 7',
                      imagenUrl: 'assets/images/lec7.png',
                      pantalla: Leccion_2(),
                    ),
                    CustomCard(
                      name: 'Lección 8',
                      imagenUrl: 'assets/images/lec8.png',
                      pantalla: Leccion_2(),
                    )
                  ],
                ),
              ]),
        ));
  }
}
