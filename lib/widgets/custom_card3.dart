import 'package:my_app_lsb/theme/appTheme.dart';
import 'package:flutter/material.dart';

class CustomCard3 extends StatelessWidget {
  final String imageUrl;
  final String? name;
  final String ayuda2;
  final String imgAyuda;
  final String ayuda3;

  const CustomCard3(
      {super.key,
      required this.imageUrl,
      this.name,
      required this.ayuda2,
      required this.imgAyuda,
      required this.ayuda3});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 30,
        shadowColor: AppTheme.primary.withOpacity(0.5),
        child: Column(
          children: [
            FadeInImage(
              image: AssetImage(imageUrl),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: 480,
              height: 480,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null)
              Row(
                children: [
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    padding:
                        const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                    child: Text(name ?? 'No title ',
                        style: TextStyle(fontSize: 35)),
                  ),
                  IconButton(
                      iconSize: 25,
                      icon: Icon(Icons.help_outline_outlined),
                      onPressed: () {
                        displayDialogImagen(context, ayuda2, imgAyuda, ayuda3);
                      })
                ],
              ),
          ],
        ));
  }

  // muestra ALERTA CON IMAGEN DE AYUDA
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
