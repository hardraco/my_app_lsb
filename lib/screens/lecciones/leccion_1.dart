import 'package:flutter/material.dart';
import 'package:my_app_lsb/widgets/custom_card3.dart';
import 'package:my_app_lsb/widgets/widgets.dart';

class Leccion_1 extends StatelessWidget {
  const Leccion_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lección 1'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard2(
              name: 'A',
              imagenUrl: 'assets/senhas/a.JPG',
              ayuda1: 'Intente sacar un poco el pulgar'),
          CustomCard2(
            name: 'B',
            imagenUrl: 'assets/senhas/b.JPG',
            ayuda1: 'Trate de juntar los 4 dedos',
          ),
          CustomCard2(name: 'C', imagenUrl: 'assets/senhas/c.JPG', ayuda1: ''),
          CustomCard2(
            name: 'D',
            imagenUrl: 'assets/senhas/d.JPG',
            ayuda1: 'Junte los dedos al pulgar levantando el índice',
          ),
          CustomCard2(
              name: 'E',
              imagenUrl: 'assets/senhas/e.JPG',
              ayuda1: 'Esta seña se asemeja a una pequeña garra'),
          CustomCard2(
            name: 'F',
            imagenUrl: 'assets/senhas/f.JPG',
            ayuda1: 'Como todo ok',
          ),
          CustomCard2(
              name: 'G',
              imagenUrl: 'assets/senhas/g.JPG',
              ayuda1: 'Como una pequeña pistola a un dedo'),
          CustomCard2(
            name: 'H',
            imagenUrl: 'assets/senhas/h.JPG',
            ayuda1: 'Como una pequeña pistola a dos dedos',
          ),
          CustomCard2(
              name: 'I', imagenUrl: 'assets/senhas/i.JPG', ayuda1: 'Promesa'),
          CustomCard2(
            name: 'J',
            imagenUrl: 'assets/senhas/j.gif',
            ayuda1: 'Dibuje una J con la seña de la letra I',
          ),
          CustomCard2(
              name: 'K',
              imagenUrl: 'assets/senhas/k.JPG',
              ayuda1:
                  'Levante el índice y junte el pulgar con el dedo corazón'),
          CustomCard2(
            name: 'L',
            imagenUrl: 'assets/senhas/l.JPG',
            ayuda1: 'Como Looser',
          ),
          CustomCard2(
              name: 'M',
              imagenUrl: 'assets/senhas/m.JPG',
              ayuda1: 'Intente pronunciar el pulgar'),
          CustomCard2(
            name: 'N',
            imagenUrl: 'assets/senhas/n.JPG',
            ayuda1: 'Intente pronunciar el pulgar',
          ),
          CustomCard2(name: 'O', imagenUrl: 'assets/senhas/o.JPG', ayuda1: ''),
          CustomCard2(
            name: 'P',
            imagenUrl: 'assets/senhas/p.JPG',
            ayuda1: 'Como la letra K pero inclinada hacia adelante',
          ),
          CustomCard2(
              name: 'Q',
              imagenUrl: 'assets/senhas/q.JPG',
              ayuda1: 'Piense que tiene una pequeña caja en sus dedos'),
          CustomCard2(
            name: 'R',
            imagenUrl: 'assets/senhas/r.JPG',
            ayuda1: 'Dedos de promesa',
          ),
          CustomCard2(
              name: 'S',
              imagenUrl: 'assets/senhas/s.JPG',
              ayuda1: 'Solo cierre la mano'),
          CustomCard2(
            name: 'T',
            imagenUrl: 'assets/senhas/t.JPG',
            ayuda1: 'Utilice el dedo índice como sombrero del pulgar',
          ),
          CustomCard2(
              name: 'U',
              imagenUrl: 'assets/senhas/u.JPG',
              ayuda1: 'Solo levante los dedos índice y medio'),
          CustomCard2(
            name: 'V',
            imagenUrl: 'assets/senhas/v.JPG',
            ayuda1: 'Como el símbolo de paz',
          ),
          CustomCard2(
              name: 'W',
              imagenUrl: 'assets/senhas/w.JPG',
              ayuda1: 'Como el número 6'),
          CustomCard2(
            name: 'X',
            imagenUrl: 'assets/senhas/x.JPG',
            ayuda1: 'Como una garrita',
          ),
          CustomCard2(name: 'Y', imagenUrl: 'assets/senhas/y.JPG', ayuda1: ''),
          CustomCard2(
            name: 'Z',
            imagenUrl: 'assets/senhas/z.gif',
            ayuda1: 'Dibuje una Z imaginaria con el dedo índice',
          ),
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
