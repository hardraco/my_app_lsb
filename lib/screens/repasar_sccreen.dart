import 'package:flutter/material.dart';
import 'package:my_app_lsb/screens/screens.dart';
import 'package:my_app_lsb/widgets/custom_card.dart';

class RepasarScreen extends StatelessWidget {
  const RepasarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('REPASAR')),
      body: Center(
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            /*
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Leccion_1(),
                        ),
                      );
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ink.image(
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              image: const AssetImage('assets/images/saludo.png')),
                          const Text(
                            'Saludos',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10)
                        ]

                        /*const Text(
                      'Pronombres Personales',
                      style: TextStyle(fontSize: 45),
                    )*/
                        )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Leccion_2(),
                        ),
                      );
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ink.image(
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              image:
                                  const AssetImage('assets/images/manoRockera.png')),
                          const Text(
                            'Pronombres Personales',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10)
                        ]

                        /*const Text(
                      'Pronombres Personales',
                      style: TextStyle(fontSize: 45),
                    )*/
                        ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Leccion_1(),
                        ),
                      );
                    },
                    child: const Text(
                      'Saludos',
                      style: TextStyle(fontSize: 45),
                    )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Leccion_2(),
                        ),
                      );
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Ink.image(
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              image:
                                  const AssetImage('assets/images/manoRockera.png')),
                          const Text(
                            'Pronombres Imersonales',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10)
                        ]

                        /*const Text(
                      'Pronombres Personales',
                      style: TextStyle(fontSize: 45),
                    )*/
                        ))
              ],
            ),*/
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Alfabeto',
                  imagenUrl: 'assets/images/alfa.png',
                  pantalla: Alfabeto(),
                ),
                CustomCard(
                  name: 'Alimentos y comidas',
                  imagenUrl: 'assets/images/alim.png',
                  pantalla: Alimentos(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Bebidas',
                  imagenUrl: 'assets/images/bebida.png',
                  pantalla: Bebidas(),
                ),
                CustomCard(
                  name: 'Colores',
                  imagenUrl: 'assets/images/colo.png',
                  pantalla: Colores(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Departamentos de Bolivia',
                  imagenUrl: 'assets/images/depar.png',
                  pantalla: Departamentos(),
                ),
                CustomCard(
                  name: 'Deportes',
                  imagenUrl: 'assets/images/deporte.png',
                  pantalla: Deportes(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Días de la semana',
                  imagenUrl: 'assets/images/dias.png',
                  pantalla: Dias(),
                ),
                CustomCard(
                  name: 'Frutas y Verduras',
                  imagenUrl: 'assets/images/frutas.png',
                  pantalla: Frutas_Verduras(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Lugares de La Paz',
                  imagenUrl: 'assets/images/lugar.png',
                  pantalla: Lugares(),
                ),
                CustomCard(
                  name: 'Meses del año',
                  imagenUrl: 'assets/images/meses.png',
                  pantalla: Meses(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Miembros de la familia',
                  imagenUrl: 'assets/images/miembros.png',
                  pantalla: Miembros(),
                ),
                CustomCard(
                  name: 'Normas de Cortesía',
                  imagenUrl: 'assets/images/cortesia.png',
                  pantalla: Normas(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Números',
                  imagenUrl: 'assets/images/num.png',
                  pantalla: Numeros(),
                ),
                CustomCard(
                  name: 'Palabras interrogativas',
                  imagenUrl: 'assets/images/interrogacion.png',
                  pantalla: Palabras(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Pronombres',
                  imagenUrl: 'assets/images/pron.png',
                  pantalla: Pronombres(),
                ),
                CustomCard(
                  name: 'Sustantivos',
                  imagenUrl: 'assets/images/sustantivos.png',
                  pantalla: Sustantivos(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Tiempo',
                  imagenUrl: 'assets/images/time.png',
                  pantalla: Tiempo(),
                ),
                CustomCard(
                  name: 'Trabajos y oficios',
                  imagenUrl: 'assets/images/trabajo.png',
                  pantalla: Trabajos(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Verbos a una mano',
                  imagenUrl: 'assets/images/mano.png',
                  pantalla: Verbos_1(),
                ),
                CustomCard(
                  name: 'Verbos a dos manos',
                  imagenUrl: 'assets/images/mano.png',
                  pantalla: Verbos_2(),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomCard(
                  name: 'Verbos transicionales',
                  imagenUrl: 'assets/images/mano.png',
                  pantalla: Verbos_3(),
                ),
                CustomCard(
                  name: 'Verbos con negación propia',
                  imagenUrl: 'assets/images/mano.png',
                  pantalla: Verbos_4(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
