import 'package:flutter/material.dart';
import 'package:my_app_lsb/widgets/custom_card3.dart';
import 'package:my_app_lsb/widgets/widgets.dart';

class Leccion_5 extends StatelessWidget {
  const Leccion_5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lección 1'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: const [
                  CustomCard2(
                    name: 'Buendía',
                    imagenUrl: 'assets/buenDia.gif',
                    ayuda1: 'Se muestra la ayuda 🤙',
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              CustomCard3(
                name: 'Familia',
                imageUrl: 'assets/familia.gif',
                ayuda2:
                    'Para esta seña necesitará colocar sus dedos de la siguiente forma: ',
                imgAyuda: 'assets/ok.png',
                ayuda3: 'Como la letra F del abecedario',
              ),
            ],
          )
        ],
      ),
    );
  }

  //alerta Ayuda
  void displayDialogAndroid(BuildContext context, String text) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: Text('Ayuda'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 10),
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok"))
            ],
          );
        });
  }

  // alerta Ayuda con Imagen
  void displayDialogImagen(
      BuildContext context, String text, String imagenAyuda, String text2) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: Text('Ayuda'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(15)),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              // Texto encima de la imagen de ayuda
              Text(text, textAlign: TextAlign.center),
              const SizedBox(height: 10),
              // Imagen de ayuda

              FadeInImage(
                image: AssetImage(imagenAyuda),
                placeholder: const AssetImage('assets/jar-loading.gif'),
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                fadeInDuration: const Duration(milliseconds: 300),
              ),
              const SizedBox(height: 10),
              // Texto debajo de la imagen de ayuda
              Text(text2)
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok"))
            ],
          );
        });
  }
}
