import 'package:my_app_lsb/theme/appTheme.dart';
import 'package:flutter/material.dart';

class CustomCard2 extends StatelessWidget {
  final String imagenUrl;
  final String? name;
  final String ayuda1;

  const CustomCard2(
      {super.key, required this.imagenUrl, this.name, required this.ayuda1});

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
              image: AssetImage(imagenUrl),
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
                        displayDialogAndroid(context, ayuda1);
                      })
                ],
              ),
          ],
        ));
  }

  //muestra ALERTA SIMPLE
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
}
